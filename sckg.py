import importlib
import yaml

class SCKG(object):

  def __init__(self):
    with open('config.yml', 'r') as f:
      self.config = yaml.safe_load(f.read())

    for regime in self.config['regimes']:
      self.regime_etl(regime)

  def regime_etl(self, regime):
    etl_config = regime.get('etl', 'generic')
    if etl_config == 'generic':
      module_name = self.config['defaults']['generic']['module']
      class_name = self.config['defaults']['generic']['class']
    else:
      module_name = regime['etl']['module']
      class_name = regime['etl']['class']
    etl_class = getattr(importlib.import_module(module_name),
                        class_name)
    etl_instance = etl_class(self.config)

    regime_list = etl_instance.extract(regime)
    stmts = etl_instance.transform(regime, regime_list)
    etl_instance.load(regime, stmts)

def main():
  sckg = SCKG()

if __name__ == '__main__':
  main()