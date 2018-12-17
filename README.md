```
Analyse:	abcda
analyse	ab	1
analyse	abc	2
analyse	bc	3
analyse	bcd	4
analyse	cd	5
analyse	cda	6
analyse	da	7
Result:
{
	4,
	b = {
		2,
		4,
		c = {
			1,
			2,
			cd = {
				0,
				1,
			},
		},
		bc = {
			0,
			1,
		},
	},
	a = {
		2,
		4,
		ab = {
			0,
			1,
		},
		b = {
			1,
			2,
			bc = {
				0,
				1,
			},
		},
	},
	d = {
		1,
		2,
		da = {
			0,
			1,
		},
	},
	c = {
		2,
		4,
		d = {
			1,
			2,
			da = {
				0,
				1,
			},
		},
		cd = {
			0,
			1,
		},
	},
}
```
