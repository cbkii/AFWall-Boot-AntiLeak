.class public final synthetic Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

.field public final synthetic f$1:Lorg/xbill/DNS/dnssec/SRRset;

.field public final synthetic f$2:Lorg/xbill/DNS/dnssec/SMessage;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:[I

.field public final synthetic f$7:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$8:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$9:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;Ljava/util/List;Ljava/util/List;[ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$1:Lorg/xbill/DNS/dnssec/SRRset;

    iput-object p3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$2:Lorg/xbill/DNS/dnssec/SMessage;

    iput-object p4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$4:Ljava/util/List;

    iput-object p6, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$5:Ljava/util/List;

    iput-object p7, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$6:[I

    iput-object p8, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$7:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p9, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$8:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p10, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$9:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$1:Lorg/xbill/DNS/dnssec/SRRset;

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$2:Lorg/xbill/DNS/dnssec/SMessage;

    iget-object v3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$4:Ljava/util/List;

    iget-object v5, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$5:Ljava/util/List;

    iget-object v6, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$6:[I

    iget-object v7, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$7:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v8, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$8:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;->f$9:Ljava/util/concurrent/Executor;

    move-object v10, p1

    check-cast v10, Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-virtual/range {v0 .. v10}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->lambda$validatePositiveResponseRecursive$2$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;Ljava/util/List;Ljava/util/List;[ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/dnssec/KeyEntry;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
