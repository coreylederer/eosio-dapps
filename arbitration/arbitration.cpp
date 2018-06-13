/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eosiolib/singleton.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <string>

using eosio::const_mem_fun;
using eosio::indexed_by;
using eosio::asset;
using std::string;

namespace controls {
    enum Monies {bond, fee, submittalfee, bondowed};
    enum Person {arbitrator, claimant, respondent};
    enum Item   {document, rejection, transaction};
    enum Entity {arbcase, claim};
}

class arbitration : public eosio::contract {
    public:
        explicit arbitration(action_name self) : contract(self) {}

        bool exists(controls::Entity what, const uint64_t entity_id) {
            switch(what) {
                case controls::arbcase: {
                    arbcase_index arbcases(_self, _self);
                    auto arbcases_itr = arbcases.find(entity_id);
                    return arbcases_itr != arbcases.end();
                }
                case controls::claim: {
                    claim_index claims(_self, _self);
                    auto claims_itr = claims.find(entity_id);
                    return claims_itr != claims.end();
                }
                default: {
                    return false;
                }
            }
        }

        bool exists(controls::Person who, controls::Entity where, const uint64_t entity_id,
                    const account_name person) {
            switch(who) {
                case controls::arbitrator: {
                    switch(where) {
                        case controls::arbcase: {
                            arbitrator_index arbitrators(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            auto arbitrators_itr = arbitrators.find(person);
                            return arbitrators_itr != arbitrators.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::claimant: {
                    switch(where) {
                        case controls::arbcase: {
                            claimant_index claimants(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            auto claimants_itr = claimants.find(person);
                            return claimants_itr != claimants.end();
                        }
                        case controls::claim: {
                            claimant_index claimants(_self, entity_id); // entity_id is a claim id being used as the scope
                            auto claimants_itr = claimants.find(person);
                            return claimants_itr != claimants.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::respondent: {
                    switch(where) {
                        case controls::arbcase: {
                            respondent_index respondents(_self, entity_id); // entity_id is an arbcase id being used as scope
                            auto respondents_itr = respondents.find(person);
                            return respondents_itr != respondents.end();
                        }
                        case controls::claim: {
                            respondent_index respondents(_self, entity_id); // entity_id is a claim id being used as scope
                            auto respondents_itr = respondents.find(person);
                            return respondents_itr != respondents.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        bool exists(controls::Item what, controls::Entity where, const uint64_t entity_id,
                    const uint64_t item_id) {
            switch(what) {
                case controls::document: {
                    switch(where) {
                        case controls::arbcase: {
                            document_index documents(_self, entity_id); // entity_id is an arbcase id being used as scope
                            auto documents_itr = documents.find(item_id);
                            return documents_itr != documents.end();
                        }
                        case controls::claim: {
                            document_index documents(_self, entity_id); // entity_id is a claim id being used as scope
                            auto documents_itr = documents.find(item_id);
                            return documents_itr != documents.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::rejection: {
                    switch(where) {
                        case controls::arbcase: {
                            rejection_index rejections(_self, entity_id); // entity_id is an arbcase id being used as scope
                            auto rejections_itr = rejections.find(item_id);
                            return rejections_itr != rejections.end();
                        }
                        case controls::claim: {
                            rejection_index rejections(_self, entity_id); // entity_id is a claim id being used as scope
                            auto rejections_itr = rejections.find(item_id);
                            return rejections_itr != rejections.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::transaction: {
                    switch(where) {
                        case controls::arbcase: {
                            transaction_index transactions(_self, entity_id); // entity_id is an arbcase id being used as scope
                            auto transactions_itr = transactions.find(item_id);
                            return transactions_itr != transactions.end();
                        }
                        case controls::claim: {
                            transaction_index transactions(_self, entity_id); // entity_id is a claim id being used as scope
                            auto transactions_itr = transactions.find(item_id);
                            return transactions_itr != transactions.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        bool exists(controls::Monies what, controls::Entity where, const uint64_t entity_id,
                    const uint64_t item_id) {
            switch(what) {
                case controls::bond: {
                    switch(where) {
                        case controls::arbcase: {
                            bond_index bonds(_self, entity_id); // entity_id is an arbcase id being used as scope
                            auto bonds_itr = bonds.find(item_id);
                            return bonds_itr != bonds.end();
                        }
                        case controls::claim: {
                            bond_index bonds(_self, entity_id); // entity_id is a claim id being used as scope
                            auto bonds_itr = bonds.find(item_id);
                            return bonds_itr != bonds.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::fee: {
                    switch(where) {
                        case controls::arbcase: {
                            fee_index fees(_self, entity_id); // entity_id is an arbcase id being used as scope
                            auto fees_itr = fees.find(item_id);
                            return fees_itr != fees.end();
                        }
                        case controls::claim: {
                            fee_index fees(_self, entity_id); // entity_id is a claim id being used as scope
                            auto fees_itr = fees.find(item_id);
                            return fees_itr != fees.end();
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        bool add(controls::Person who, controls::Entity where, const account_name person_to_add,
                 const uint64_t entity_id, const account_name payer) {
            switch(who) {
                case controls::arbitrator: {
                    switch(where) {
                        case controls::arbcase: {
                            arbitrator_index arbitrators(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            arbitrators.emplace(payer, [&](auto& arbtrtr) {
                                arbtrtr.id = person_to_add;
                            });
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::claimant: {
                    switch(where) {
                        case controls::arbcase: {
                            claimant_index claimants(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            claimants.emplace(payer, [&](auto& clmnt) {
                                clmnt.id = person_to_add;
                            });
                            return true;
                        }
                        case controls::claim: {
                            claimant_index claimants(_self, entity_id); // entity_id is a claim id being used as the scope
                            claimants.emplace(payer, [&](auto& clmnt) {
                                clmnt.id = person_to_add;
                            });
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::respondent: {
                    switch(where) {
                        case controls::arbcase: {
                            respondent_index respondents(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            respondents.emplace(payer, [&](auto& rspndnt) {
                                rspndnt.id = person_to_add;
                            });
                            return true;
                        }
                        case controls::claim: {
                            respondent_index respondents(_self, entity_id); // entity_id is a claim id being used as the scope
                            respondents.emplace(payer, [&](auto& rspndnt) {
                                rspndnt.id = person_to_add;
                            });
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        bool remove(controls::Person who, controls::Entity where, const account_name person_to_remove,
                    const uint64_t entity_id) {
            switch(who) {
                case controls::arbitrator: {
                    switch(where) {
                        case controls::arbcase: {
                            arbitrator_index arbitrators(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            auto arbitrators_itr = arbitrators.find(person_to_remove);
                            arbitrators.erase(arbitrators_itr);
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::claimant: {
                    switch(where) {
                        case controls::arbcase: {
                            claimant_index claimants(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            auto claimants_itr = claimants.find(person_to_remove);
                            claimants.erase(claimants_itr);
                            return true;
                        }
                        case controls::claim: {
                            claimant_index claimants(_self, entity_id); // entity_id is a claim id being used as the scope
                            auto claimants_itr = claimants.find(person_to_remove);
                            claimants.erase(claimants_itr);
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::respondent: {
                    switch(where) {
                        case controls::arbcase: {
                            respondent_index respondents(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            auto respondents_itr = respondents.find(person_to_remove);
                            respondents.erase(respondents_itr);
                            return true;
                        }
                        case controls::claim: {
                            respondent_index respondents(_self, entity_id); // entity_id is a claim id being used as the scope
                            auto respondents_itr = respondents.find(person_to_remove);
                            respondents.erase(respondents_itr);
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        bool add(controls::Item what, controls::Entity where, const uint64_t item_id_to_add,
                 const account_name owner, const string description, string link,
                 const checksum256 hoc_or_txid, const uint64_t entity_id, const account_name payer) {
            switch(what) {
                case controls::document: {
                    switch(where) {
                        case controls::arbcase: {
                            document_index documents(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            documents.emplace(payer, [&](auto& doc) {
                                doc.id = item_id_to_add;
                                doc.owner = owner;
                                doc.description = description;
                                doc.link = link;
                                doc.hash_of_contents = hoc_or_txid;
                            });
                            return true;
                        }
                        case controls::claim: {
                            document_index documents(_self, entity_id); // entity_id is a claim id being used as the scope
                            documents.emplace(payer, [&](auto& doc) {
                                doc.id = item_id_to_add;
                                doc.owner = owner;
                                doc.description = description;
                                doc.link = link;
                                doc.hash_of_contents = hoc_or_txid;
                            });
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::rejection: {
                    switch(where) {
                        case controls::arbcase: {
                            rejection_index rejections(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            rejections.emplace(payer, [&](auto& doc) {
                                doc.id = item_id_to_add;
                                doc.owner = owner;
                                doc.description = description;
                                doc.link = link;
                                doc.hash_of_contents = hoc_or_txid;
                            });
                            return true;
                        }
                        case controls::claim: {
                            rejection_index rejections(_self, entity_id); // entity_id is a claim id being used as the scope
                            rejections.emplace(payer, [&](auto& doc) {
                                doc.id = item_id_to_add;
                                doc.owner = owner;
                                doc.description = description;
                                doc.link = link;
                                doc.hash_of_contents = hoc_or_txid;
                            });
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::transaction: {
                    switch(where) {
                        case controls::arbcase: {
                            transaction_index transactions(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            transactions.emplace(payer, [&](auto& trans) {
                                trans.id = item_id_to_add;
                                trans.owner = owner;
                                trans.description = description;
                                trans.link = link;
                                trans.tx_id = hoc_or_txid;
                            });
                            return true;
                        }
                        case controls::claim: {
                            transaction_index transactions(_self, entity_id); // entity_id is a claim id being used as the scope
                            transactions.emplace(payer, [&](auto& trans) {
                                trans.id = item_id_to_add;
                                trans.owner = owner;
                                trans.description = description;
                                trans.link = link;
                                trans.tx_id = hoc_or_txid;
                            });
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        bool remove(controls::Item what, controls::Entity where,
                    const uint64_t item_id_to_remove, const uint64_t entity_id) {
            switch(what) {
                case controls::document: {
                    switch(where) {
                        case controls::arbcase: {
                            document_index documents(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            auto documents_itr = documents.find(item_id_to_remove);
                            documents.erase(documents_itr);
                            return true;
                        }
                        case controls::claim: {
                            document_index documents(_self, entity_id); // entity_id is a claim id being used as the scope
                            auto documents_itr = documents.find(item_id_to_remove);
                            documents.erase(documents_itr);
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::rejection: {
                    switch(where) {
                        case controls::arbcase: {
                            rejection_index rejections(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            auto rejections_itr = rejections.find(item_id_to_remove);
                            rejections.erase(rejections_itr);
                            return true;
                        }
                        case controls::claim: {
                            rejection_index rejections(_self, entity_id); // entity_id is a claim id being used as the scope
                            auto rejections_itr = rejections.find(item_id_to_remove);
                            rejections.erase(rejections_itr);
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::transaction: {
                    switch(where) {
                        case controls::arbcase: {
                            transaction_index transactions(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            auto transactions_itr = transactions.find(item_id_to_remove);
                            transactions.erase(transactions_itr);
                            return true;
                        }
                        case controls::claim: {
                            transaction_index transactions(_self, entity_id); // entity_id is a claim id being used as the scope
                            auto transactions_itr = transactions.find(item_id_to_remove);
                            transactions.erase(transactions_itr);
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        bool add(controls::Monies what, controls::Entity where, const uint64_t item_id,
                 const asset amount, const bool current, const uint64_t entity_id,
                 const account_name payer) {
            switch(what) {
                case controls::bond: {
                    switch(where) {
                        case controls::arbcase: {
                            bond_index bonds(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            bonds.emplace(payer, [&](auto& bnd) {
                                bnd.id = item_id;
                                bnd.bond = amount;
                                bnd.current = current;
                            });
                            return true;
                        }
                        case controls::claim: {
                            bond_index bonds(_self, entity_id); // entity_id is a claim id being used as the scope
                            bonds.emplace(payer, [&](auto& bnd) {
                                bnd.id = item_id;
                                bnd.bond = amount;
                                bnd.current = current;
                            });
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::fee: {
                    switch(where) {
                        case controls::arbcase: {
                            fee_index fees(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            fees.emplace(payer, [&](auto& bnd) {
                                bnd.id = item_id;
                                bnd.fee = amount;
                                bnd.current = current;
                            });
                            return true;
                        }
                        case controls::claim: {
                            fee_index fees(_self, entity_id); // entity_id is a claim id being used as the scope
                            fees.emplace(payer, [&](auto& f) {
                                f.id = item_id;
                                f.fee = amount;
                                f.current = current;
                            });
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        bool open(controls::Entity what, const uint64_t entity_id, const account_name payer) {
            switch(what) {
                case controls::arbcase: {
                    arbcase_index arbcases(_self, _self);
                    arbcases.emplace(payer, [&](auto& arbcs) {
                        arbcs.id = entity_id;
                    });
                    return true;
                }
                case controls::claim: {
                    claim_index claims(_self, _self);
                    claims.emplace(payer, [&](auto& clm) {
                        clm.id = entity_id;
                    });
                    return true;
                }
                default: {
                    return false;
                }
            }
        }

        bool close(controls::Entity what, uint64_t entity_id) {
            switch(what) {
                case controls::arbcase: {
                    arbcase_index arbcases(_self, _self);
                    auto arbcases_itr = arbcases.find(entity_id);
                    arbcases.modify(arbcases_itr, 0, [&](auto& arbcs) {
                        arbcs.closed = true;
                    });
                    return true;
                }
                case controls::claim: {
                    claim_index claims(_self, _self);
                    auto claims_itr = claims.find(entity_id);
                    claims.modify(claims_itr, 0, [&](auto& clm) {
                        clm.closed = true;
                    });
                    return true;
                }
                default: {
                    return false;
                }
            }
        }

        bool reopen(controls::Entity what, uint64_t entity_id) {
            switch(what) {
                case controls::arbcase: {
                    arbcase_index arbcases(_self, _self);
                    auto arbcases_itr = arbcases.find(entity_id);
                    arbcases.modify(arbcases_itr, 0, [&](auto& arbcs) {
                        arbcs.closed = false;
                    });
                    return true;
                }
                case controls::claim: {
                    claim_index claims(_self, _self);
                    auto claims_itr = claims.find(entity_id);
                    claims.modify(claims_itr, 0, [&](auto& clm) {
                        clm.closed = false;
                    });
                    return true;
                }
                default: {
                    return false;
                }
            }
        }

        bool transfer_docs(const uint64_t claim_id, const uint64_t arbcase_id,
                           const account_name payer) {
            document_index documents(_self, claim_id);
            for(const auto& docs : documents) {
                if(!add(controls::document, controls::arbcase, docs.id,
                        docs.owner, docs.description, docs.link,
                        docs.hash_of_contents, arbcase_id, payer)) {
                            return false;
                    }
            }
            return true;
        }

        bool transfer_txs(const uint64_t claim_id, const uint64_t arbcase_id,
                          const account_name payer) {
            transaction_index transactions(_self, claim_id);
            for(const auto& trans : transactions) {
                if(!add(controls::transaction, controls::arbcase, trans.id,
                        trans.owner, trans.description,trans.link, trans.tx_id,
                        arbcase_id, payer)) {
                            return false;
                    }
            }            
            return true;
        }

        bool transfer_fees(const uint64_t claim_id, const uint64_t arbcase_id,
                           const account_name payer) {
            fee_index fees(_self, claim_id);
            for(const auto& f : fees) {
                if(!add(controls::fee, controls::arbcase, f.id,
                        f.fee, f.current, arbcase_id, payer)) {
                            return false;
                    }
            }            
            return true;
        }

        bool transfer_bonds(const uint64_t claim_id, const uint64_t arbcase_id,
                           const account_name payer) {
            bond_index bonds(_self, claim_id);
            for(const auto& b : bonds) {
                if(!add(controls::bond, controls::arbcase, b.id,
                        b.bond, b.current, arbcase_id, payer)) {
                            return false;
                    }
            }            
            return true;
        }

        bool set(controls::Monies what, controls::Entity where, const asset amount,
                 const account_name payer, const uint64_t item_id,
                 const uint64_t entity_id) {
            switch(what) {
                case controls::fee: {
                    switch(where) {
                        case controls::arbcase: {
                            fee_index fees(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            if (fees.end() == fees.begin()) {
                                fees.emplace(payer, [&](auto& f) {
                                    f.id = item_id;
                                    f.fee = amount;
                                    f.current = true;
                                });
                            } else {
                                auto current_index = fees.get_index<N(bycurrent)>();
                                auto currents_itr = current_index.find(true);
                                fees.modify(currents_itr, 0, [&](auto& f) {
                                    f.current = false;
                                });
                               fees.emplace(payer, [&](auto& f) {
                                    f.id = item_id;
                                    f.fee = amount;
                                    f.current = true;
                                });
                            }
                            return true;
                        }
                        case controls::claim: {
                            fee_index fees(_self, entity_id); // entity_id is a claim id being used as the scope
                            if (fees.end() == fees.begin()) {
                                fees.emplace(payer, [&](auto& f) {
                                    f.id = item_id;
                                    f.fee = amount;
                                    f.current = true;
                                });
                            } else {
                                auto current_index = fees.get_index<N(bycurrent)>();
                                auto currents_itr = current_index.find(true);
                                fees.modify(currents_itr, 0, [&](auto& f) {
                                    f.current = false;
                                });
                               fees.emplace(payer, [&](auto& f) {
                                    f.id = item_id;
                                    f.fee = amount;
                                    f.current = true;
                                });
                            }
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::bond: {
                    switch(where) {
                        case controls::arbcase: {
                            bond_index bonds(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            if (bonds.end() == bonds.begin()) {
                                bonds.emplace(payer, [&](auto& f) {
                                    f.id = item_id;
                                    f.bond = amount;
                                    f.current = true;
                                });
                            } else {
                                auto current_index = bonds.get_index<N(bycurrent)>();
                                auto currents_itr = current_index.find(true);
                                bonds.modify(currents_itr, 0, [&](auto& f) {
                                    f.current = false;
                                });
                               bonds.emplace(payer, [&](auto& f) {
                                    f.id = item_id;
                                    f.bond = amount;
                                    f.current = true;
                                });
                            }
                            return true;
                        }
                        case controls::claim: {
                            bond_index bonds(_self, entity_id); // entity_id is a claim id being used as the scope
                            if (bonds.end() == bonds.begin()) {
                                bonds.emplace(payer, [&](auto& f) {
                                    f.id = item_id;
                                    f.bond = amount;
                                    f.current = true;
                                });
                            } else {
                                auto current_index = bonds.get_index<N(bycurrent)>();
                                auto currents_itr = current_index.find(true);
                                bonds.modify(currents_itr, 0, [&](auto& f) {
                                    f.current = false;
                                });
                               bonds.emplace(payer, [&](auto& f) {
                                    f.id = item_id;
                                    f.bond = amount;
                                    f.current = true;
                                });
                            }
                            return true;
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }

        bool set(controls::Monies what, controls::Entity where, const asset amount,
                 const account_name payer, const account_name id,
                 const uint64_t entity_id) {
            switch(what) {
                case controls::bondowed: {
                    switch(where) {
                        case controls::arbcase: {
                            bondowed_index bondsowed(_self, entity_id); // entity_id is an arbcase id being used as the scope
                            bondsowed.emplace(payer, [&](auto& bo) {
                                bo.id = id;
                                bo.amount = amount;
                            });
                            return true;
                        }
                        case controls::claim: {
                            bondowed_index bondsowed(_self, entity_id); // entity_id is a claim id being used as the scope
                            bondsowed.emplace(payer, [&](auto& bo) {
                                bo.id = id;
                                bo.amount = amount;
                            });
                        }
                        default: {
                            return false;
                        }
                    }
                }
            }
        }

        bool set(controls::Monies what, asset amount, const account_name authority) {
            switch(what) {
                case controls::submittalfee: {
                    submittalfee_index sf(_self,_self);
                    submittalfee new_submittalfee{amount};
                    sf.set(new_submittalfee,authority);
                    return true;
                }
                default: {
                    return false;
                }
            }
        }

        bool pay(controls::Monies what, controls::Entity where, asset amount,
                 const account_name who, const uint64_t entity_id) {
            switch(what) {
                case controls::fee: {
                    switch(where) {
                        case controls::arbcase: {
                        }
                        case controls::claim: {
                        }
                        default: {
                            return false;
                        }
                    }
                }
                case controls::bondowed: {
                    switch(where) {
                        case controls::arbcase: {
                        }
                        case controls::claim: {
                        }
                        default: {
                            return false;
                        }
                    }
                }
                default: {
                    return false;
                }
            }
        }
    
        bool pay(controls::Monies what, asset amount, const account_name who) {
            switch(what) {
                case controls::submittalfee: {

                    return true;
                }
                default: {
                    return false;
                }
            }
        }

        //@abi action
        void opencase() {

        }

        //@abi action
        void closecase() {

        }

        //@abi action
        void openclaim() {

        }

        //@abi action
        void closeclaim() {

        }

        //@abi action
        void adddoc() {

        }

        //@abi action
        void removedoc() {

        }

        //@abi action
        void addtx() {

        }

        //@abi action
        void removetx() {

        }

        //@abi action
        void addarb() {

        }

        //@abi action
        void removearb() {

        }

        //@abi action
        void addclmnt() {

        }

        //@abi action
        void removeclmnt() {

        }

        //@abi action
        void addresp() {

        }

        //@abi action
        void removeresp() {

        }

        //@abit action
        void setbond() {

        }

        //@abit action
        void setfee() {

        }

        //@abit action
        void setsubfee() {

        }

        //@abi action
        void setbondowed() {

        }

        //@abit action
        void paybond() {

        }

        //@abit action
        void payfee() {

        }

        //@abit action
        void paysubfee() {

        }

        //@abi action
        void paybondowed() {
            
        }

    private:
        //@abi table claim i64
        struct claim {
            uint64_t id;
            bool closed = false;
            bool rejected = false;
            uint64_t primary_key() const { return id; }
            EOSLIB_SERIALIZE( claim, (id)(closed)(rejected) )
        };
        typedef eosio::multi_index< N(claim), claim > claim_index;

        //@abi table arbcase i64
        struct arbcase {
            uint64_t id;
            bool closed = false;
            uint64_t primary_key() const { return id; }
            EOSLIB_SERIALIZE( arbcase, (id)(closed) )
        };
        typedef eosio::multi_index< N(arbcase), arbcase > arbcase_index;

        //@abi table claimant i64
        struct claimant {
            account_name id;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( claimant, (id) )
        };
        typedef eosio::multi_index< N(claimant), claimant > claimant_index;

        //@abi table respondent i64
        struct respondent {
            account_name id;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( respondent, (id) )
        };
        typedef eosio::multi_index< N(respondent), respondent > respondent_index;

        //@abi table arbitrator i64
        struct arbitrator {
            account_name id;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( arbitrator, (id) )
        };
        typedef eosio::multi_index< N(arbitrator), arbitrator > arbitrator_index;

        //@abi table document i64
        struct document {
            uint64_t id;
            account_name owner;
            string description;
            string link;
            checksum256 hash_of_contents;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( document, (id)(owner)(description)(link)(hash_of_contents) )
        };
        typedef eosio::multi_index< N(document), document,
            indexed_by< N(byowner), const_mem_fun<document, account_name, &document::by_owner> >
            > document_index;

        //@abi table rejection i64
        struct rejection {
            uint64_t id;
            account_name owner;
            string description;
            string link;
            checksum256 hash_of_contents;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( rejection, (id)(owner)(description)(link)(hash_of_contents) )
        };
        typedef eosio::multi_index< N(rejection), rejection > rejection_index;

        //@abi table transaction i64
        struct transaction {
            uint64_t id;
            account_name owner;
            string description;
            string link;
            checksum256 tx_id;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( transaction, (id)(owner)(description)(link)(tx_id) )
        };
        typedef eosio::multi_index< N(transaction), transaction,
            indexed_by< N(byowner), const_mem_fun<transaction, account_name, &transaction::by_owner> >
            > transaction_index;

        //@abi table bondpayment i64
        struct bondpayment {
            uint64_t id;
            account_name owner;
            asset amount;
            uint64_t primary_key() const { return id; }
            account_name by_owner() const { return owner; }
            EOSLIB_SERIALIZE( transaction, (id)(owner)(amount) )
        };
        typedef eosio::multi_index< N(bondpayment), bondpayment,
            indexed_by< N(byowner), const_mem_fun<bondpayment, account_name, &bondpayment::by_owner> >
            > bondpayment_index;

        //@abi table bondowed i64
        struct bondowed {
            account_name id;
            asset amount;
            bool paid = false;
            account_name primary_key() const { return id; }
            EOSLIB_SERIALIZE( transaction, (id)(amount)(paid) )
        };
        typedef eosio::multi_index< N(bondowed), bondowed > bondowed_index;

        //@abi table fee i64
        struct fee {
            uint64_t id;
            asset fee;
            bool current;
            uint64_t primary_key() const { return id; }
            bool by_current() const { return current; }
            EOSLIB_SERIALIZE( transaction, (id)(fee)(current) )
        };
        typedef eosio::multi_index< N(fee), fee,
            indexed_by< N(bycurrent), const_mem_fun<fee, bool, &fee::by_current> >
            > fee_index;

        //@abi table bond i64
        struct bond {
            uint64_t id;
            asset bond;
            bool current;
            uint64_t primary_key() const { return id; }
            bool by_current() const { return current; }
            EOSLIB_SERIALIZE( transaction, (id)(bond)(current) )
        };
        typedef eosio::multi_index< N(bond), bond,
            indexed_by< N(bycurrent), const_mem_fun<bond, bool, &bond::by_current> >
            > bond_index;

        //@abi table submittalfee i64
        struct submittalfee {
            asset fee;
            int64_t primary_key() const { return fee.amount; }
            EOSLIB_SERIALIZE( submittalfee, (fee) )
        };
        typedef eosio::singleton< N(submittalfee), submittalfee > submittalfee_index;

        typedef uint64_t id;
        typedef eosio::singleton<N(indexid), id>  index_id_index;

        id next_index_id(){
            index_id_index last_index_id(_self, _self);
            id lindexid = last_index_id.exists() ? last_index_id.get() + 1 : 0;
            last_index_id.set(lindexid,_self);
            return lindexid;
        }
};

EOSIO_ABI( arbitration,  )