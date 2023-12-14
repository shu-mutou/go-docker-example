package main

import (
	"net/http/httptest"
	"testing"

	restful "github.com/emicklei/go-restful/v3"
	"github.com/stretchr/testify/assert"
)

func Test_hello(t *testing.T) {
	recorder := httptest.NewRecorder()
	response := &restful.Response{ResponseWriter: recorder}
	hello(&restful.Request{}, response)
	r := recorder.Body.String()
	assert.Equal(t, r, "world")
}
