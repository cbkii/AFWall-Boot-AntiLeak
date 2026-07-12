.class public final synthetic Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/DohResolver;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/DohResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda17;->f$0:Lorg/xbill/DNS/DohResolver;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda17;->f$0:Lorg/xbill/DNS/DohResolver;

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/DohResolver;->lambda$getHttpClient$0$org-xbill-DNS-DohResolver(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
