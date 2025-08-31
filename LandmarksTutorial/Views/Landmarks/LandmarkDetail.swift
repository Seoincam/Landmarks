//
//  LandmarkDetail.swift
//  LandmarksTutorial
//
//  Created by 박서인 on 8/31/25.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    /*
     * 그냥 landmark를 읽는 것은 상관 없지만,
     * 수정을 할 때는 struct이기 때문에
     * 복사 처리돼서 수정이 안됨.
     * 그래서 ModelData 안의 데이터 원본에
     * 직접 접근하기 위해 필요!
     */
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        /*
         * @Bindable은 그냥 데이터를 읽기만 할 때는
         * 필요 없지만, 데이터를 쌍방향으로 수정하기
         * 위해서 사용됨.
         */
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
        .environment(ModelData())
}
