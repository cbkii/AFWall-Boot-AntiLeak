.class public Ldev/ukanth/ufirewall/events/RxCommandEvent;
.super Ljava/lang/Object;
.source "RxCommandEvent.java"


# static fields
.field private static final sSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/events/RxCommandEvent;->sSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static publish(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/events/RxCommandEvent;->sSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 25
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    sget-object v0, Ldev/ukanth/ufirewall/events/RxCommandEvent;->sSubject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 21
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method
