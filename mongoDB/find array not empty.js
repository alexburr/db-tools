// If you have documents that don't have the key, you can use:
db.stuff.find({ pictures: { $exists: true, $not: {$size: 0 } } })

// MongoDB doesn't use indexes if $size is involved, so here is a better solution:
db.stuff.find({ pictures: { $exists: true, $ne: [] } })