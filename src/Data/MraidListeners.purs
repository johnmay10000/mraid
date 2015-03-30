module Data.MraidListeners where

type Listeners =
    {
        ready :: [(Unit -> Unit)],
        error :: [(Unit -> Unit)],
        stateChange :: [(Unit -> Unit)],
        viewableChange :: [(Unit -> Unit)],
        sizeChange :: [(Unit -> Unit)]
    }
