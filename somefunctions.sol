pragma solidity >=0.5.16 <0.9.0;

contract TBD {
    struct LoanOffer {
        address addressContractId;
        uint tokenId;
        address payable lender;
        uint repaymentDate;
        uint amount; // eth
        uint repaymentAmount; // eth
    }

    function postLoanRequest(address _assetContractId, uint _tokenId, uint repaymentDate, uint loanAmount) public {}
    function getLoanOffers(address _assetContractId, uint _tokenId) public view returns(LoanOffer[] memory) {}
    function acceptLoan(address _assetContractId, uint _tokenId, uint _loanId) public payable {}

    function payBackLoan(uint _loanId) public payable {}
}

