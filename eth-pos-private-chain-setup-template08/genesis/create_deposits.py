import json
import os

def create_deposit_data(validators):
    deposits = []
    for validator in validators:
        deposit = {
            "pubkey": validator['pubkey'],
            "withdrawal_credentials": validator['withdrawal_credentials'],
            "amount": validator['amount'],
            "signature": validator['signature'],
            "index": validator['index']
        }
        deposits.append(deposit)
    return deposits

def main():
    # Example validator data
    validators = [
        {
            "pubkey": "0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef",
            "withdrawal_credentials": "0xabcdefabcdefabcdefabcdefabcdefabcdefabcdef",
            "amount": 32000000000,  # Amount in wei (32 ETH)
            "signature": "0xabcdefabcdefabcdefabcdefabcdefabcdefabcdefabcdefabcdefabcdefabcdef",
            "index": 0
        },
        # Add more validators as needed
    ]

    deposit_data = create_deposit_data(validators)

    # Write deposit data to deposits.json
    with open(os.path.join(os.path.dirname(__file__), 'deposits.json'), 'w') as f:
        json.dump(deposit_data, f, indent=4)

if __name__ == "__main__":
    main()