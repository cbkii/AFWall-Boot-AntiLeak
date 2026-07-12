.class public abstract Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;
.super Landroid/os/Binder;
.source "IFileSystemService.java"

# interfaces
.implements Lcom/topjohnwu/superuser/internal/IFileSystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/IFileSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_checkAccess:I = 0x12

.field static final TRANSACTION_close:I = 0x1c

.field static final TRANSACTION_createLink:I = 0x17

.field static final TRANSACTION_createNewFile:I = 0x7

.field static final TRANSACTION_delete:I = 0x8

.field static final TRANSACTION_ftruncate:I = 0x21

.field static final TRANSACTION_getCanonicalPath:I = 0x1

.field static final TRANSACTION_getFreeSpace:I = 0x14

.field static final TRANSACTION_getMode:I = 0x16

.field static final TRANSACTION_getTotalSpace:I = 0x13

.field static final TRANSACTION_getUsableSpace:I = 0x15

.field static final TRANSACTION_isDirectory:I = 0x2

.field static final TRANSACTION_isFile:I = 0x3

.field static final TRANSACTION_isHidden:I = 0x4

.field static final TRANSACTION_lastModified:I = 0x5

.field static final TRANSACTION_length:I = 0x6

.field static final TRANSACTION_list:I = 0x9

.field static final TRANSACTION_lseek:I = 0x1f

.field static final TRANSACTION_mkdir:I = 0xa

.field static final TRANSACTION_mkdirs:I = 0xb

.field static final TRANSACTION_openChannel:I = 0x19

.field static final TRANSACTION_openReadStream:I = 0x1a

.field static final TRANSACTION_openWriteStream:I = 0x1b

.field static final TRANSACTION_pread:I = 0x1d

.field static final TRANSACTION_pwrite:I = 0x1e

.field static final TRANSACTION_register:I = 0x18

.field static final TRANSACTION_renameTo:I = 0xc

.field static final TRANSACTION_setExecutable:I = 0x11

.field static final TRANSACTION_setLastModified:I = 0xd

.field static final TRANSACTION_setReadOnly:I = 0xe

.field static final TRANSACTION_setReadable:I = 0x10

.field static final TRANSACTION_setWritable:I = 0xf

.field static final TRANSACTION_size:I = 0x20

.field static final TRANSACTION_sync:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.topjohnwu.superuser.internal.IFileSystemService"

    .line 169
    invoke-virtual {p0, p0, v0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/internal/IFileSystemService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.topjohnwu.superuser.internal.IFileSystemService"

    .line 180
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    instance-of v1, v0, Lcom/topjohnwu/superuser/internal/IFileSystemService;

    if-eqz v1, :cond_1

    .line 182
    check-cast v0, Lcom/topjohnwu/superuser/internal/IFileSystemService;

    return-object v0

    .line 184
    :cond_1
    new-instance v0, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.topjohnwu.superuser.internal.IFileSystemService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 194
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_a

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 558
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 548
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 551
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->sync(IZ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .line 537
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 540
    invoke-virtual {p0, p1, v2, v3}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->ftruncate(IJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .line 528
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 529
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->size(I)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .line 515
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 520
    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->lseek(IJI)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .line 502
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 507
    invoke-virtual {p0, p1, p4, v2, v3}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->pwrite(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .line 489
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 494
    invoke-virtual {p0, p1, p4, v2, v3}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->pread(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .line 482
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 483
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->close(I)V

    goto/16 :goto_3

    .line 469
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 471
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 474
    :cond_2
    invoke-virtual {p0, p1, p4, v0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->openWriteStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .line 458
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 460
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->openReadStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .line 445
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 450
    invoke-virtual {p0, p1, p4, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->openChannel(Ljava/lang/String;ILjava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .line 438
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 439
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->register(Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 425
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    .line 430
    :cond_3
    invoke-virtual {p0, p1, p4, v0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->createLink(Ljava/lang/String;Ljava/lang/String;Z)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .line 416
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->getMode(Ljava/lang/String;)I

    move-result p1

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 407
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->getUsableSpace(Ljava/lang/String;)J

    move-result-wide p1

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_3

    .line 398
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide p1

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_3

    .line 389
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->getTotalSpace(Ljava/lang/String;)J

    move-result-wide p1

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_3

    .line 378
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 381
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->checkAccess(Ljava/lang/String;I)Z

    move-result p1

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 365
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    const/4 p4, 0x1

    goto :goto_0

    :cond_4
    const/4 p4, 0x0

    .line 369
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    .line 370
    :cond_5
    invoke-virtual {p0, p1, p4, v0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->setExecutable(Ljava/lang/String;ZZ)Z

    move-result p1

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 352
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    const/4 p4, 0x1

    goto :goto_1

    :cond_6
    const/4 p4, 0x0

    .line 356
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    .line 357
    :cond_7
    invoke-virtual {p0, p1, p4, v0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->setReadable(Ljava/lang/String;ZZ)Z

    move-result p1

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 339
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8

    const/4 p4, 0x1

    goto :goto_2

    :cond_8
    const/4 p4, 0x0

    .line 343
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    .line 344
    :cond_9
    invoke-virtual {p0, p1, p4, v0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->setWritable(Ljava/lang/String;ZZ)Z

    move-result p1

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 330
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->setReadOnly(Ljava/lang/String;)Z

    move-result p1

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 319
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 322
    invoke-virtual {p0, p1, v2, v3}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->setLastModified(Ljava/lang/String;J)Z

    move-result p1

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 308
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 299
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->mkdirs(Ljava/lang/String;)Z

    move-result p1

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 290
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->mkdir(Ljava/lang/String;)Z

    move-result p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 281
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 272
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->delete(Ljava/lang/String;)Z

    move-result p1

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 263
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->createNewFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_3

    .line 254
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->length(Ljava/lang/String;)J

    move-result-wide p1

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_3

    .line 245
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->lastModified(Ljava/lang/String;)J

    move-result-wide p1

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_3

    .line 236
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->isHidden(Ljava/lang/String;)Z

    move-result p1

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 227
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->isFile(Ljava/lang/String;)Z

    move-result p1

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 218
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->isDirectory(Ljava/lang/String;)Z

    move-result p1

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 209
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->getCanonicalPath(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-static {p3, p1, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_3
    return v1

    .line 200
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
