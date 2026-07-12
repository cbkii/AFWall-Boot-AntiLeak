.class public final synthetic Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/Record;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/Record;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda11;->f$0:Lorg/xbill/DNS/Record;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda11;->f$0:Lorg/xbill/DNS/Record;

    check-cast p1, Lorg/xbill/DNS/Cache;

    invoke-static {v0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->lambda$lookupWithCache$4(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Cache;)Lorg/xbill/DNS/SetResponse;

    move-result-object p1

    return-object p1
.end method
