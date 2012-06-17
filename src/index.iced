Future = ->
	callback = null
	result = null
	future = (cb) ->
		if result
			cb result...
		else
			callback = cb
	future.toString = -> '[Future]'
	future.inspect = future.toString
	future.resolve = ->
		if callback
			callback arguments...
		else
			result = arguments
	return future

module.exports = Future