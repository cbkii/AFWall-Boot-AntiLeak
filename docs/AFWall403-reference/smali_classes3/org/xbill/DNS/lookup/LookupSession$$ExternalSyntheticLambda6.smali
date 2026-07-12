.class public final synthetic Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/lookup/LookupSession;

.field public final synthetic f$1:Lorg/xbill/DNS/Record;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Record;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda6;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    iput-object p2, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda6;->f$1:Lorg/xbill/DNS/Record;

    iput p3, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda6;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda6;->f$1:Lorg/xbill/DNS/Record;

    iget v2, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda6;->f$2:I

    check-cast p1, Lorg/xbill/DNS/lookup/LookupResult;

    invoke-virtual {v0, v1, v2, p1}, Lorg/xbill/DNS/lookup/LookupSession;->lambda$maybeFollowRedirectsInAnswer$11$org-xbill-DNS-lookup-LookupSession(Lorg/xbill/DNS/Record;ILorg/xbill/DNS/lookup/LookupResult;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
