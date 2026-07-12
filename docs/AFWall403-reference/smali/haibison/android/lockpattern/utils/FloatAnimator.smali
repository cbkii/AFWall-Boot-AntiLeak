.class public Lhaibison/android/lockpattern/utils/FloatAnimator;
.super Ljava/lang/Object;
.source "FloatAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhaibison/android/lockpattern/utils/FloatAnimator$SimpleEventListener;,
        Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY:J = 0x1L


# instance fields
.field private animatedValue:F

.field private final duration:J

.field private final endValue:F

.field private eventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private startTime:J

.field private final startValue:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->startValue:F

    iput p2, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->endValue:F

    iput-wide p3, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->duration:J

    iput p1, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->animatedValue:F

    return-void
.end method

.method static synthetic access$000(Lhaibison/android/lockpattern/utils/FloatAnimator;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$002(Lhaibison/android/lockpattern/utils/FloatAnimator;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 32
    iput-object p1, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->handler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lhaibison/android/lockpattern/utils/FloatAnimator;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->startTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lhaibison/android/lockpattern/utils/FloatAnimator;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->duration:J

    return-wide v0
.end method

.method static synthetic access$300(Lhaibison/android/lockpattern/utils/FloatAnimator;)F
    .locals 0

    .line 32
    iget p0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->endValue:F

    return p0
.end method

.method static synthetic access$400(Lhaibison/android/lockpattern/utils/FloatAnimator;)F
    .locals 0

    .line 32
    iget p0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->startValue:F

    return p0
.end method

.method static synthetic access$502(Lhaibison/android/lockpattern/utils/FloatAnimator;F)F
    .locals 0

    .line 32
    iput p1, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->animatedValue:F

    return p1
.end method


# virtual methods
.method public addEventListener(Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->eventListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 132
    invoke-static {}, Lhaibison/android/lockpattern/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->eventListeners:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->eventListeners:Ljava/util/List;

    .line 133
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->handler:Landroid/os/Handler;

    .line 189
    invoke-virtual {p0}, Lhaibison/android/lockpattern/utils/FloatAnimator;->notifyAnimationCancel()V

    .line 190
    invoke-virtual {p0}, Lhaibison/android/lockpattern/utils/FloatAnimator;->notifyAnimationEnd()V

    return-void
.end method

.method public getAnimatedValue()F
    .locals 1

    iget v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->animatedValue:F

    return v0
.end method

.method protected notifyAnimationCancel()V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->eventListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;

    .line 222
    invoke-interface {v1, p0}, Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;->onAnimationCancel(Lhaibison/android/lockpattern/utils/FloatAnimator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->eventListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;

    .line 233
    invoke-interface {v1, p0}, Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;->onAnimationEnd(Lhaibison/android/lockpattern/utils/FloatAnimator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyAnimationStart()V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->eventListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;

    .line 200
    invoke-interface {v1, p0}, Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;->onAnimationStart(Lhaibison/android/lockpattern/utils/FloatAnimator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyAnimationUpdate()V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->eventListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;

    .line 211
    invoke-interface {v1, p0}, Lhaibison/android/lockpattern/utils/FloatAnimator$EventListener;->onAnimationUpdate(Lhaibison/android/lockpattern/utils/FloatAnimator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lhaibison/android/lockpattern/utils/FloatAnimator;->notifyAnimationStart()V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->startTime:J

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator;->handler:Landroid/os/Handler;

    .line 156
    new-instance v1, Lhaibison/android/lockpattern/utils/FloatAnimator$1;

    invoke-direct {v1, p0}, Lhaibison/android/lockpattern/utils/FloatAnimator$1;-><init>(Lhaibison/android/lockpattern/utils/FloatAnimator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
