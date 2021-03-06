#!/bin/bash
python3 train.py trainer.gpus=2 datamodule.batch_size=1024 trainer.strategy=ddp trainer.sync_batchnorm=True

 python3 run.py hydra.verbose=True \
 resume=False \
 batch_size=100 \
 datamodule.num_workers=4 \
 trainer.gpus=0 \
 +trainer.tpu_cores=8 \
 trainer.strategy=ddp \
 trainer.sync_batchnorm=True \
 datamodule=debug-tali \
 datamodule.dataset_config.modality_config.image=True \
 datamodule.dataset_config.modality_config.text=True \
 datamodule.dataset_config.modality_config.audio=False \
 datamodule.dataset_config.modality_config.video=False \
 datamodule.dataset_config.rescan_paths=False \
 datamodule.prefetch_factor=1 \
 datamodule.dataset_config.dataset_size_identifier=base \
 wandb_project_name=local-tpu-dev \
 model=base_modus_prime_dumbnet

 python3 run.py hydra.verbose=True  resume=False  batch_size=8  datamodule.num_workers=4  trainer.gpus=0  +trainer.tpu_cores=8  trainer.strategy=ddp  +trainer.sync_batchnorm=True  datamodule=debug-tali  datamodule.dataset_config.modality_config.image=True  datamodule.dataset_config.modality_config.text=True  datamodule.dataset_config.modality_config.audio=False  datamodule.dataset_config.modality_config.video=False  datamodule.dataset_config.rescan_paths=False  datamodule.prefetch_factor=1  datamodule.dataset_config.dataset_size_identifier=base  wandb_project_name=local-tpu-dev  model=base_modus_prime_dumbnet logging_level=DEBUG

 python3 run.py \
 hydra.verbose=True \
 resume=False \
 batch_size=8 \
 datamodule.num_workers=96 \
 trainer.gpus=0 \
 +trainer.tpu_cores=8 \
 trainer.strategy=ddp \
 +trainer.sync_batchnorm=True \
 datamodule=debug-tali \
 datamodule.dataset_config.modality_config.image=True \
 datamodule.dataset_config.modality_config.text=True \
 datamodule.dataset_config.modality_config.audio=False \
 datamodule.dataset_config.modality_config.video=False \
 datamodule.dataset_config.rescan_paths=False \
 datamodule.prefetch_factor=1 \
 datamodule.dataset_config.dataset_size_identifier=base \
 wandb_project_name=local-tpu-dev model=base_dumbus_prime_vi-transformer16 \
 logging_level=DEBUG \
 model.image_embedding_config._target_=tali.models.auto_builder.transformers.AutoDumbNet \
 +model.image_embedding_config.embedding_output_features=512

python3 run.py \
 hydra.verbose=True \
 resume=False \
 batch_size=4 \
 datamodule.num_workers=8 \
 trainer.gpus=2 \
 trainer.strategy=ddp \
 +trainer.sync_batchnorm=True \
 datamodule=debug-tali \
 datamodule.dataset_config.modality_config.image=True \
 datamodule.dataset_config.modality_config.text=True \
 datamodule.dataset_config.modality_config.audio=True \
 datamodule.dataset_config.modality_config.video=True \
 datamodule.dataset_config.rescan_paths=False \
 datamodule.prefetch_factor=1 \
 datamodule.dataset_config.dataset_size_identifier=base \
 wandb_project_name=local-tpu-dev \
 model=base_dumbus_prime_vi-transformer16 \
 logging_level=DEBUG

 python3 run.py \
 hydra.verbose=False \
 resume=False \
 batch_size=2 \
 datamodule.num_workers=8 \
 trainer=ddp \
 datamodule=debug-tali \
 datamodule.dataset_config.modality_config.image=True \
 datamodule.dataset_config.modality_config.text=True \
 datamodule.dataset_config.modality_config.audio=True \
 datamodule.dataset_config.modality_config.video=True \
 datamodule.dataset_config.rescan_paths=False \
 datamodule.prefetch_factor=1 \
 datamodule.dataset_config.dataset_size_identifier=base \
 wandb_project_name=local-dev \
 model=base_modus_prime_vi-transformer16 \
 datamodule.train_num_samples=10000

 python3 run.py \
 hydra.verbose=False \
 resume=False \
 batch_size=2 \
 datamodule.num_workers=8 \
 datamodule=tali \
 datamodule.dataset_config.modality_config.image=True \
 datamodule.dataset_config.modality_config.text=True \
 datamodule.dataset_config.modality_config.audio=True \
 datamodule.dataset_config.modality_config.video=True \
 datamodule.dataset_config.rescan_paths=False \
 datamodule.prefetch_factor=1 \
 datamodule.dataset_config.dataset_size_identifier=base \
 wandb_project_name=local-dev \
 model=base_modus_prime_vi-transformer16 \
 datamodule.train_num_samples=10000 \
 debug_data=True


 python3 run.py  hydra.verbose=False  resume=False  batch_size=10  datamodule.dataloader_config.num_workers=80  trainer=ddp  trainer.gpus=1 datamodule=tali  datamodule.dataset_config.modality_config.image=True  datamodule.dataset_config.modality_config.text=True  datamodule.dataset_config.modality_config.audio=True  datamodule.dataset_config.modality_config.video=True  datamodule.dataset_config.rescan_paths=False  datamodule.dataloader_config.prefetch_factor=1  datamodule.dataset_config.dataset_size_identifier=base  wandb_project_name=local-dev  model=base_modus_prime_vi-transformer16  datamodule.dataloader_config.train_num_samples=200000000 trainer.val_check_interval=0.025