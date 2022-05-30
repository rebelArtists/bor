package span

import (
	"github.com/ethereum/go-ethereum/consensus/bor/set"
)

// Span Bor represents a current bor span
type Span struct {
	ID         uint64 `json:"span_id" yaml:"span_id"`
	StartBlock uint64 `json:"start_block" yaml:"start_block"`
	EndBlock   uint64 `json:"end_block" yaml:"end_block"`
}

// HeimdallSpan represents span from heimdall APIs
type HeimdallSpan struct {
	Span
	ValidatorSet      set.ValidatorSet `json:"validator_set" yaml:"validator_set"`
	SelectedProducers []set.Validator  `json:"selected_producers" yaml:"selected_producers"`
	ChainID           string           `json:"bor_chain_id" yaml:"bor_chain_id"`
}
