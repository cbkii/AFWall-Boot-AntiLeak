.class public Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ANYCAST_ADDRESS_XP;
.super Lcom/sun/jna/Structure;
.source "IPHlpAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Length",
        "Reserved",
        "Next",
        "Address"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/config/IPHlpAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IP_ADAPTER_ANYCAST_ADDRESS_XP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_ANYCAST_ADDRESS_XP$ByReference;
    }
.end annotation


# instance fields
.field public Address:Lorg/xbill/DNS/config/IPHlpAPI$SOCKET_ADDRESS;

.field public Length:I

.field public Next:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SERVER_ADDRESS_XP$ByReference;

.field public Reserved:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
