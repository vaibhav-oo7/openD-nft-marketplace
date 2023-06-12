import Debug "mo:base/Debug";
import Principal "mo:base/Principal";
//nyjzv-hkrgm-avjt3-gdeoa-dcqnl-zwv7b-v6atp-2sitf-he7ab-l3o7k-4ae
//rrkah-fqaaa-aaaaa-aaaaq-cai

actor class NFT (name : Text, owner : Principal, content : [Nat8]) = this {

    private let itemName = name;
    private var nftOwner = owner;
    private let imageBytes = content;
    

    //har nft ki apni alag canister id hogi isliye unique hota ( ie non fungible tokens )

    public query func getName() : async Text {
        return itemName;
    };

    public query func getOwner() : async Principal {
        return nftOwner;
    };

    public query func getAsset() : async [Nat8] {
        return imageBytes;
    };

    public query func getCanisterId() : async Principal {
        return Principal.fromActor(this);
    };

    public shared (msg) func transferOwnership(newOwner : Principal): async Text {
        if(msg.caller == nftOwner){
            nftOwner := newOwner;
            return "Success";
        }else{
            return "Error : not initiated by nft owner ."
        }
    };

};