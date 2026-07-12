.class public final synthetic Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lorg/xbill/DNS/Record;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lorg/xbill/DNS/Record;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda10;->f$0:Ljava/util/List;

    iput-object p2, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda10;->f$1:Lorg/xbill/DNS/Record;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda10;->f$0:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda10;->f$1:Lorg/xbill/DNS/Record;

    check-cast p1, Lorg/xbill/DNS/Message;

    invoke-static {v0, v1, p1}, Lorg/xbill/DNS/lookup/LookupSession;->lambda$lookupWithResolver$8(Ljava/util/List;Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/lookup/LookupResult;

    move-result-object p1

    return-object p1
.end method
