#!/bin/bash
python3 train.py +trainer.tpu_cores=8 datamodule.batch_size=1024 +trainer.strategy=ddp +trainer.sync_batchnorm=True

