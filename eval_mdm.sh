

# 1.1B MDM, 1.61e21 training FLOPs, please refer Appendix B.3 for training details

python evaluate_diff.py --tasks lambada_standard --model mdlm --batch_size 16 --model_args model_name=1028,ckpt_path='models/mdm-1028M-1610e18-rsl.safetensors',nll_type='chain_rule',greddy=True,cfg=1.2

python evaluate_diff.py --tasks openbookqa,boolq --model mdlm --batch_size 16 --model_args model_name=1028,ckpt_path='models/mdm-1028M-1610e18-rsl.safetensors',nll_type='chain_rule',greddy=False,cfg=1.6

python evaluate_diff.py --tasks piqa --model mdlm --batch_size 16 --model_args model_name=1028,ckpt_path='models/mdm-1028M-1610e18-rsl.safetensors',nll_type='chain_rule',greddy=False

python evaluate_diff.py --tasks arc_easy --model mdlm --batch_size 16 --model_args model_name=1028,ckpt_path='models/mdm-1028M-1610e18-rsl.safetensors',nll_type='mc',greddy=False,cfg=0.4

python evaluate_diff.py --tasks social_iqa --model mdlm --batch_size 16 --model_args model_name=1028,ckpt_path='models/mdm-1028M-1610e18-rsl.safetensors',nll_type='mc',greddy=False,cfg=0.4

python evaluate_diff.py --tasks race --model mdlm --batch_size 16 --model_args model_name=1028,ckpt_path='models/mdm-1028M-1610e18-rsl.safetensors',nll_type='mc',greddy=False,cfg=1.4

python evaluate_diff.py --tasks hellaswag --model mdlm --batch_size 16 --model_args model_name=1028,ckpt_path='models/mdm-1028M-1610e18-rsl.safetensors',nll_type='mc',greddy=False,cfg=0.6