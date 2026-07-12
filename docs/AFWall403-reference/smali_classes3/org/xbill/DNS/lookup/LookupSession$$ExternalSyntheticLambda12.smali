.class public final synthetic Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/lookup/LookupSession;

.field public final synthetic f$1:Lorg/xbill/DNS/Record;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Record;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda12;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    iput-object p2, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda12;->f$1:Lorg/xbill/DNS/Record;

    iput-object p3, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda12;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda12;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda12;->f$1:Lorg/xbill/DNS/Record;

    iget-object v2, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda12;->f$2:Ljava/util/List;

    check-cast p1, Lorg/xbill/DNS/SetResponse;

    invoke-virtual {v0, v1, v2, p1}, Lorg/xbill/DNS/lookup/LookupSession;->lambda$lookupWithCache$5$org-xbill-DNS-lookup-LookupSession(Lorg/xbill/DNS/Record;Ljava/util/List;Lorg/xbill/DNS/SetResponse;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
