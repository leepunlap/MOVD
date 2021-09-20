const { expect } = require("chai");

describe("Token contract", function () {

  it("Deployment should assign the total supply of tokens to the owner", async function () {
    const [owner] = await ethers.getSigners();
    const Token = await ethers.getContractFactory("MoveToken");
    const hardhatToken = await Token.deploy();
    const ownerBalance = await hardhatToken.balanceOf(owner.address);
    const totalSupply = await hardhatToken.totalSupply();

    console.log("    Owner         : " + owner.address);
    console.log("    Connection    : " + owner.provider.connection.url);
    console.log("    Total Supply  : " + totalSupply);
    console.log("    Owner Balance : " + ownerBalance);
    expect(await hardhatToken.totalSupply()).to.equal(ownerBalance);

  });
});


