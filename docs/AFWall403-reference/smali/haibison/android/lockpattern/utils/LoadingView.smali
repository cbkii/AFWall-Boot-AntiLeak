.class public abstract Lhaibison/android/lockpattern/utils/LoadingView;
.super Landroid/os/AsyncTask;
.source "LoadingView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private delayTime:J

.field private finished:Z

.field private lastException:Ljava/lang/Throwable;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lhaibison/android/lockpattern/utils/LoadingView;->delayTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhaibison/android/lockpattern/utils/LoadingView;->finished:Z

    iput-object p2, p0, Lhaibison/android/lockpattern/utils/LoadingView;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lhaibison/android/lockpattern/utils/LoadingView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lhaibison/android/lockpattern/utils/LoadingView;->finished:Z

    return p0
.end method

.method static synthetic access$100(Lhaibison/android/lockpattern/utils/LoadingView;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lhaibison/android/lockpattern/utils/LoadingView;->view:Landroid/view/View;

    return-object p0
.end method

.method private doFinish()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhaibison/android/lockpattern/utils/LoadingView;->finished:Z

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/LoadingView;->view:Landroid/view/View;

    const/16 v1, 0x8

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getDelayTime()J
    .locals 2

    iget-wide v0, p0, Lhaibison/android/lockpattern/utils/LoadingView;->delayTime:J

    return-wide v0
.end method

.method public getLastException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/LoadingView;->lastException:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lhaibison/android/lockpattern/utils/LoadingView;->doFinish()V

    .line 93
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lhaibison/android/lockpattern/utils/LoadingView;->doFinish()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lhaibison/android/lockpattern/utils/LoadingView$1;

    invoke-direct {v1, p0}, Lhaibison/android/lockpattern/utils/LoadingView$1;-><init>(Lhaibison/android/lockpattern/utils/LoadingView;)V

    .line 74
    invoke-virtual {p0}, Lhaibison/android/lockpattern/utils/LoadingView;->getDelayTime()J

    move-result-wide v2

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setDelayTime(I)Lhaibison/android/lockpattern/utils/LoadingView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lhaibison/android/lockpattern/utils/LoadingView<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lhaibison/android/lockpattern/utils/LoadingView;->delayTime:J

    return-object p0
.end method

.method protected setLastException(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/utils/LoadingView;->lastException:Ljava/lang/Throwable;

    return-void
.end method
