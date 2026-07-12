.class public final synthetic Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

.field public final synthetic f$1:Lorg/xbill/DNS/dnssec/SRRset;

.field public final synthetic f$2:Lorg/xbill/DNS/dnssec/SMessage;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$4:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

.field public final synthetic f$5:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$1:Lorg/xbill/DNS/dnssec/SRRset;

    iput-object p3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$2:Lorg/xbill/DNS/dnssec/SMessage;

    iput-object p4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$3:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$4:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

    iput-object p6, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$5:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$1:Lorg/xbill/DNS/dnssec/SRRset;

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$2:Lorg/xbill/DNS/dnssec/SMessage;

    iget-object v3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$3:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$4:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

    iget-object v5, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;->f$5:Ljava/util/concurrent/Executor;

    move-object v6, p1

    check-cast v6, Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-virtual/range {v0 .. v6}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->lambda$validateNodataResponseRecursive$5$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/dnssec/KeyEntry;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
