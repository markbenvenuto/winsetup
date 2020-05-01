# Install mongo repos

git -C z:/ clone git@github.com:10gen/kernel-tools.git

New-Item -Type Directory z:/repo
git -C z:/ clone https://github.com/will62794/Rietveld-Usability-Toolkit

# Clone a full mongodb repo with enteprise and ninja
git -C z:/ clone git@github.com:mongodb/mongo.git
git -C z:/mongo remote add mcb git@github.com:markbenvenuto/mongo.git

New-Item -Type Directory z:/mongo/src/mongo/db/modules
git -C z:/mongo/src/mongo/db/modules clone git@github.com:10gen/mongo-enterprise-modules.git enterprise
git -C z:/mongo/src/mongo/db/modules/enterprise remote add mcb git@github.com:markbenvenuto/mongo-enterprise-modules.git

git -C z:/mongo/src/mongo/db/modules clone https://github.com/RedBeard0531/mongo_module_ninja ninja
git -C z:/mongo/src/mongo/db/modules/ninja remote add mcb git@github.com:markbenvenuto/mongo_module_ninja.git

