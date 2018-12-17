```lua
-- Analyse:	abcda
--	1	substring	a
--	2	substring	ab
--	3	substring	abc
--	4	substring	b
--	5	substring	bc
--	6	substring	bcd
--	7	substring	c
--	8	substring	cd
--	9	substring	cda
--	10	substring	d
--	11	substring	da
--	12	substring	da
--	13	substring	a
--	14	substring	a
Result =
{
	4,
	a = {
		2,
		10,
		a = {
			0,
			3,
		},
		b = {
			2,
			4,
			c = {
				1,
				2,
				c = {
					0,
					1,
				},
			},
			b = {
				0,
				1,
			},
		},
	},
	d = {
		2,
		6,
		a = {
			1,
			4,
			a = {
				0,
				2,
			},
		},
		d = {
			0,
			1,
		},
	},
	c = {
		2,
		6,
		c = {
			0,
			1,
		},
		d = {
			2,
			4,
			a = {
				1,
				2,
				a = {
					0,
					1,
				},
			},
			d = {
				0,
				1,
			},
		},
	},
	b = {
		2,
		6,
		c = {
			2,
			4,
			c = {
				0,
				1,
			},
			d = {
				1,
				2,
				d = {
					0,
					1,
				},
			},
		},
		b = {
			0,
			1,
		},
	},
}
```
