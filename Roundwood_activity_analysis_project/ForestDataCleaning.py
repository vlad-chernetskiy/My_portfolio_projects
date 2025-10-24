import pandas as pd
import numpy as np
data=pd.DataFrame(pd.read_csv('C:/Users/borsh/PycharmProjects/PythonProject/.venv/Lib/ForestData.csv',sep=';'))
data_=data.melt(id_vars=['indicator',
                         'region',
                         'breakdown_category',
                         'breakdown',
                         'species_composition_of_stands',
                         'forms_of_reproduction',
                         'system_and_types_of_felling',
                         'types_of_cells',
                         'frequency',
                         'unit_of_measure',
                         'scaling',
                         'decimals_displayed'],
                value_vars=[
                    '2015',
                    '2016',
                    '2017',
                    '2018',
                    '2019',
                    '2020',
                    '2021',
                    '2022',
                    '2023',
                    '2024',
                    '2025'],
                var_name='Year',
                value_name='Value'
                )

data_.to_csv('ForestData_alpha1.1.csv',index=False)
data_.head()
