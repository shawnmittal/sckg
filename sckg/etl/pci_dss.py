
from sckg.etl.generic import Generic

class PCIDSS(Generic):

  def __init__(self, config):
    super().__init__(config)

  def extract(self, regime, parsable_document):
    pass

  def transform(self, regime, regime_list):
    return []

