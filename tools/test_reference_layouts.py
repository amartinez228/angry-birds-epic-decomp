"""Source-only regressions for recovered UI hierarchy validation."""
import copy
import json
import unittest

import recover_reference_layouts as layouts


class ReferenceLayoutTests(unittest.TestCase):
    def setUp(self):
        self.manifest = json.loads(layouts.OUTPUT.read_text())

    def test_reviewed_scenes_and_known_battle_widgets(self):
        layouts.validate(self.manifest)
        self.assertEqual([len(s['nodes']) for s in self.manifest['scenes']], [268, 38, 212])
        battle = self.manifest['scenes'][2]
        nodes = {n['name']: n for n in battle['nodes']}
        self.assertEqual(nodes['1_Pause']['position'][:2], [-585., 305.])
        self.assertEqual(nodes['5_RageOMeter']['position'][:2], [0., -294.])
        self.assertEqual(nodes['2_BattleProgress']['position'][:2], [0., 310.])

    def test_changed_evidence_or_build_is_rejected(self):
        for mutate in [lambda m: m.update(revision='different'),
                       lambda m: m['scenes'][0]['nodes'][0].update(name='altered')]:
            manifest = copy.deepcopy(self.manifest)
            mutate(manifest)
            with self.assertRaises(ValueError):
                layouts.validate(manifest)

    def test_broken_parent_and_nonfinite_transform_are_rejected(self):
        for mutation in [dict(parent=-1), dict(position=[float('nan'), 0., 0.])]:
            manifest = copy.deepcopy(self.manifest)
            manifest['scenes'][0]['nodes'][0].update(mutation)
            with self.assertRaises(ValueError):
                layouts.validate(manifest)

    def test_consistently_linked_cycle_is_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        nodes = manifest['scenes'][0]['nodes']
        node = nodes[0]
        by_id = {n['transform_id']: n for n in nodes}
        if node['parent']:
            by_id[node['parent']]['children'].remove(node['transform_id'])
        for child in node['children']:
            by_id[child]['parent'] = 0
        node['parent'] = node['transform_id']
        node['children'] = [node['transform_id']]
        with self.assertRaisesRegex(ValueError, 'Transform cycle'):
            layouts.validate(manifest)


if __name__ == '__main__':
    unittest.main()
