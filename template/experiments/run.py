import ray
import wandb


@ray.remote
def run_seed(config: dict, seed: int):
    run = wandb.init(
        project=config["experiment"]["name"],
        config=config,
        name=f"seed-{seed}",
    )

    # Create environment
    # Create agent
    # Train
    # Evaluate

    for episode in range(config["training"]["episodes"]):
        reward = 0.0
        wandb.log({
            "episode": episode,
            "reward": reward,
        })

    run.finish()

    return {
        "seed": seed,
        "reward": reward,
    }


def main():
    config = load_config()

    ray.init()

    seeds = config["evaluation"]["seeds"]

    futures = [
        run_seed.remote(config, seed)
        for seed in seeds
    ]

    results = ray.get(futures)
    print(results)

