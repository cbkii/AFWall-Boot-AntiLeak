.class public final synthetic Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/DohResolver;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/xbill/DNS/AsyncSemaphore$Permit;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/xbill/DNS/AsyncSemaphore$Permit;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/DohResolver;JLorg/xbill/DNS/AsyncSemaphore$Permit;ZLorg/xbill/DNS/AsyncSemaphore$Permit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;->f$0:Lorg/xbill/DNS/DohResolver;

    iput-wide p2, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;->f$1:J

    iput-object p4, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;->f$2:Lorg/xbill/DNS/AsyncSemaphore$Permit;

    iput-boolean p5, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;->f$3:Z

    iput-object p6, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;->f$4:Lorg/xbill/DNS/AsyncSemaphore$Permit;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;->f$0:Lorg/xbill/DNS/DohResolver;

    iget-wide v1, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;->f$1:J

    iget-object v3, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;->f$2:Lorg/xbill/DNS/AsyncSemaphore$Permit;

    iget-boolean v4, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;->f$3:Z

    iget-object v5, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;->f$4:Lorg/xbill/DNS/AsyncSemaphore$Permit;

    move-object v7, p2

    check-cast v7, Ljava/lang/Throwable;

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lorg/xbill/DNS/DohResolver;->lambda$sendAsync11WithConcurrentRequestPermit$4$org-xbill-DNS-DohResolver(JLorg/xbill/DNS/AsyncSemaphore$Permit;ZLorg/xbill/DNS/AsyncSemaphore$Permit;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
