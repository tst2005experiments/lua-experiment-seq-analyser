```
Analyse:	abcda
analyse	a	1
analyse	ab	2
analyse	abc	3
analyse	b	4
analyse	bc	5
analyse	bcd	6
analyse	c	7
analyse	cd	8
analyse	cda	9
analyse	d	10
analyse	da	11
analyse	da	12
analyse	a	13
analyse	a	14
Result:
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
