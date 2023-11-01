gen-proto: 
	mkdir -p ${KAI_GO_GENPROTO_PATH}/dreamstaxapis/piper/v1alpha1/openapi
	protoc -I ./ \
    	-I /usr/local/include \
		-I ${API_COMMON_PROTO_PATH} \
		-I ${KAI_PROTO_PATH} \
		-I ${GOPATH}/pkg/mod/github.com/grpc-ecosystem/grpc-gateway/v2@v2.18.0 \
    	--grpc-gateway_out ${KAI_GO_GENPROTO_PATH}/dreamstaxapis \
    	--grpc-gateway_opt logtostderr=true \
    	--openapiv2_out ${KAI_GO_GENPROTO_PATH}/dreamstaxapis/piper/v1alpha1/openapi \
    	--openapiv2_opt logtostderr=true \
    	--go_out ${KAI_GO_GENPROTO_PATH}/dreamstaxapis \
    	--go-grpc_out ${KAI_GO_GENPROTO_PATH}/dreamstaxapis \
		--go_opt=Mkai/piper/v1alpha1/piper.proto=github.com/dreamstax/go-genproto/dreamstaxapis/piper/v1alpha1 \
    	piper.proto
