.class Lhaibison/android/lockpattern/utils/FloatAnimator$1;
.super Ljava/lang/Object;
.source "FloatAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhaibison/android/lockpattern/utils/FloatAnimator;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/utils/FloatAnimator;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    .line 160
    invoke-static {v0}, Lhaibison/android/lockpattern/utils/FloatAnimator;->access$000(Lhaibison/android/lockpattern/utils/FloatAnimator;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    invoke-static {v3}, Lhaibison/android/lockpattern/utils/FloatAnimator;->access$100(Lhaibison/android/lockpattern/utils/FloatAnimator;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    .line 164
    invoke-static {v3}, Lhaibison/android/lockpattern/utils/FloatAnimator;->access$200(Lhaibison/android/lockpattern/utils/FloatAnimator;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    const/4 v1, 0x0

    .line 165
    invoke-static {v0, v1}, Lhaibison/android/lockpattern/utils/FloatAnimator;->access$002(Lhaibison/android/lockpattern/utils/FloatAnimator;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    .line 166
    invoke-virtual {v0}, Lhaibison/android/lockpattern/utils/FloatAnimator;->notifyAnimationEnd()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    .line 168
    invoke-static {v3}, Lhaibison/android/lockpattern/utils/FloatAnimator;->access$200(Lhaibison/android/lockpattern/utils/FloatAnimator;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    long-to-float v1, v1

    iget-object v2, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    invoke-static {v2}, Lhaibison/android/lockpattern/utils/FloatAnimator;->access$200(Lhaibison/android/lockpattern/utils/FloatAnimator;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v2, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    .line 169
    invoke-static {v2}, Lhaibison/android/lockpattern/utils/FloatAnimator;->access$300(Lhaibison/android/lockpattern/utils/FloatAnimator;)F

    move-result v2

    iget-object v3, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    invoke-static {v3}, Lhaibison/android/lockpattern/utils/FloatAnimator;->access$400(Lhaibison/android/lockpattern/utils/FloatAnimator;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    .line 170
    invoke-static {v3}, Lhaibison/android/lockpattern/utils/FloatAnimator;->access$400(Lhaibison/android/lockpattern/utils/FloatAnimator;)F

    move-result v4

    mul-float v2, v2, v1

    add-float/2addr v4, v2

    invoke-static {v3, v4}, Lhaibison/android/lockpattern/utils/FloatAnimator;->access$502(Lhaibison/android/lockpattern/utils/FloatAnimator;F)F

    iget-object v1, p0, Lhaibison/android/lockpattern/utils/FloatAnimator$1;->this$0:Lhaibison/android/lockpattern/utils/FloatAnimator;

    .line 172
    invoke-virtual {v1}, Lhaibison/android/lockpattern/utils/FloatAnimator;->notifyAnimationUpdate()V

    const-wide/16 v1, 0x1

    .line 173
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
