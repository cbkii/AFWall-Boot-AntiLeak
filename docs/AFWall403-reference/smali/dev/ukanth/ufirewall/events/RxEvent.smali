.class public Ldev/ukanth/ufirewall/events/RxEvent;
.super Ljava/lang/Object;
.source "RxEvent.java"


# instance fields
.field private final sSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/events/RxEvent;->sSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method

.method static synthetic lambda$subscribe$0(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "AFWall"

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public publish(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/events/RxEvent;->sSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 28
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/events/RxEvent;->sSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 22
    new-instance v1, Ldev/ukanth/ufirewall/events/RxEvent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/events/RxEvent$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method
