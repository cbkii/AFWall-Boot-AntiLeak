.class public Lorg/xbill/DNS/config/IPHlpAPI$LUID;
.super Lcom/sun/jna/Structure;
.source "IPHlpAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "LowPart",
        "HighPart"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/config/IPHlpAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LUID"
.end annotation


# instance fields
.field public HighPart:I

.field public LowPart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
