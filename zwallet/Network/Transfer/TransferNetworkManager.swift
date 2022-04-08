//
//  TransferNetworkManager.swift
//  zwallet
//
//  Created by user215490 on 4/7/22.
//

import Foundation

protocol TransferNetworkManager {
    func transfer(
        receiver: String,
        amount: Int,
        notes: String,
        completion: @escaping(InputAmountResponse?, Error?) -> ())
}
