print("Akashic Tome");


// Akashic Tome
//
var fullTome = <akashictome:tome> .withTag(

	{
		"akashictome:is_morphing": 1 as byte,
		"akashictome:data": {
			
			forestry: {
				id: "forestry:book_forester",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "forestry"
				},
				Damage: 0 as short
			},

			astralsorcery: {
				id: "astralsorcery:itemjournal",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "astralsorcery"
				},
				Damage: 0 as short
			},

			tconstruct: {
				id: "tconstruct:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "tconstruct"
				},
				Damage: 0 as short
			}, 

			botania: {
				id: "botania:lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "botania"
				},
				Damage: 0 as short
			},
 
			zawa: {
				id: "zawa:care_guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "zawa"
				},
				Damage: 0 as short
			}, 
  
			armourers_workshop: {
				id: "armourers_workshop:item.guide-book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "armourers_workshop"
				},
				Damage: 0 as short
			}, 
			
			extrautils2: {
				id: "extrautils2:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "extrautils2"
				},
				Damage: 0 as short
			},
			openblocks:{
				id:"openblocks:info_book",
				Count:1 as byte,
				tag:{
					"akashictome:definedMod":"openblocks"
				},
				Damage:0 as short
			},
			bloodmagic: {
				id: "guideapi:bloodmagic-guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "bloodmagic"
				},
				Damage: 0 as short
			},
 
			"patchouli:book":"naturesaura:book", 
			"patchouli:guide_book":"mysticalworld:world_guide",
			cookingforblockheads: {
				id: "cookingforblockheads:recipe_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "cookingforblockheads"
				},
				Damage: 1 as short
			} 
		}
	}
	
	);


//add the full book to JEI as it's own entry
mods.jei.JEI.addItem(fullTome);

//1 dirt = 1 tome
recipes.addShapeless(fullTome, [<minecraft:dirt>]);

// Inventory Starter
mods.initialinventory.InvHandler.addStartingItem(fullTome);

// Book Tooltip
	fullTome.addTooltip(format.aqua("The Tome is preloaded with all basic mod manuals and guides!"));
	mods.jei.JEI.addDescription(fullTome, "Enchanted Oasis Tome",
											  "If you lose this one 1 dirt block is all it takes to make a new one!");