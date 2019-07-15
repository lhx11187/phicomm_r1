.class public abstract Lcom/kaolafm/sdk/client/IPlayResult$Stub;
.super Landroid/os/Binder;
.source "IPlayResult.java"

# interfaces
.implements Lcom/kaolafm/sdk/client/IPlayResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaolafm/sdk/client/IPlayResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/IPlayResult$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kaolafm.sdk.client.IPlayResult"

.field static final TRANSACTION_onFailure:I = 0x2

.field static final TRANSACTION_onSuccuss:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.kaolafm.sdk.client.IPlayResult"

    invoke-virtual {p0, p0, v0}, Lcom/kaolafm/sdk/client/IPlayResult$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IPlayResult;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.kaolafm.sdk.client.IPlayResult"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kaolafm/sdk/client/IPlayResult;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/kaolafm/sdk/client/IPlayResult;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/kaolafm/sdk/client/IPlayResult$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/IPlayResult$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 44
    :sswitch_0
    const-string v2, "com.kaolafm.sdk.client.IPlayResult"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v2, "com.kaolafm.sdk.client.IPlayResult"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IPlayResult$Stub;->onSuccuss()V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v2, "com.kaolafm.sdk.client.IPlayResult"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/kaolafm/sdk/client/ErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/ErrorInfo;

    .line 64
    .local v0, "_arg0":Lcom/kaolafm/sdk/client/ErrorInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/IPlayResult$Stub;->onFailure(Lcom/kaolafm/sdk/client/ErrorInfo;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Lcom/kaolafm/sdk/client/ErrorInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/kaolafm/sdk/client/ErrorInfo;
    goto :goto_1

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
