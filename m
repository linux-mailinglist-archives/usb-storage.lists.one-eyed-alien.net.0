Return-Path: <usb-storage+bncBD6LRVPZ6YGRBN723PYQKGQE3I2NUUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id DB73614FE61
	for <lists+usb-storage@lfdr.de>; Sun,  2 Feb 2020 17:47:52 +0100 (CET)
Received: by mail-qk1-x748.google.com with SMTP id a132sf7882464qkg.5
        for <lists+usb-storage@lfdr.de>; Sun, 02 Feb 2020 08:47:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580662071; cv=pass;
        d=google.com; s=arc-20160816;
        b=T3s7mbYUYc5irVobMruk+dvaXVAabF+2wxypbdEqTmOtG0S6KBR6Nn7OQnLzp4Xs2q
         dZsK2Qx8uNV9rML8IO4AwLp8zhdF2upec+M8hhNEt/qyBfO/OSFO6iMqhMUbsg8diPCb
         yykIrez8MUp168DvzvvJeDk0IQ0q3WSyc9qeU/Q3BHlj13QH82ytVOShmJ7nLf9h9wUl
         WCEZvdmQcg8IhfaYych7Ft3h7QPLHZcwDuNpo4QJfMnozyOt1mHeP/0iBbopAg9BZ/AP
         i0OXFJFxplqRLIBtrhq6RZmYuMz1iWd1+QRZ5ksLaCm6Ea0A6BRtArFhJ4vRUf7Aw9Aa
         +DYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=yxLHbfJ3UaTSp7msvz35rUTA2dv9q+bHLKzbXkMrK08=;
        b=MZ6pjzfalffRYWVQ5xaQuJnCV3kEtwgp0Nz7ZHKyG1FZaV+UEvPw1BNZLjcUophY8z
         8RHsNj5jv0eHKM9z1vjlEXKXr6UAaBI36a6R0ogM7cSSiDC+ul8IuOBgvWTZvxfwc5GD
         ITPiVJA4H7OV/iVw+Bo/gqP3LBYBj3PLlUnZkKd7x6107VcDoWMsoDxV6fZUMFX6iLxK
         lvH/kOhmlDugev5u6ma12V0JH3qleP1TYRYKtLWFOk7TTnX7PGd46Ch/2oO5KTfabXqf
         asQoDDGOXIXXZmNeW7fAqODC1hNwva0UP9oN4RwHP9Ue51RxHfFiuNdzqLf3a5TIcCAE
         ygFQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5e39e3a2@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5e39e3a2@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yxLHbfJ3UaTSp7msvz35rUTA2dv9q+bHLKzbXkMrK08=;
        b=hszi0/mGw6MGxRteu9APW9BHG4V3nV4VG0OOM8DQDz6bOJ0yveg1EzyHNCUH5uI4aY
         3BCMWRUE9h6HiuuwTK7ufI/8uMGOn8JjJA50AyiyVSo2F0YCB1kX3/uPF+TMFo40OFmh
         zpEQbvl5rBjwhs3olNipt89q4+IjZW3BTPZ6E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yxLHbfJ3UaTSp7msvz35rUTA2dv9q+bHLKzbXkMrK08=;
        b=rLXHUEyuNmKqXtQMrGE2EhHFA2bUnWqOQTy3slS61IVFR56wMzkhHNXTqc5Ly4gpTi
         H9D/SxR20skxFmjUNVfPX2NxMksJgaqirX/BJvUyQCX3dE2xaTeTB1tsyB7r6OtmSMFf
         ujoiIwvKMOX71A4ck+nG3Sr8IZukkr1c3A085Vrdi/ih4+5ZXuIvXLbIArSTMsMvJ6fo
         9nbENMH+G4u4hHhIsp+QKXh6Qqmp7WDTVmg/7tsCDjaUzaA+HvTqyB16ZnNlYPNwm0o/
         vdUg3LbFJyV7hCUBjCjvU8S0aXfrOUrHCk9QDRYsXxdpMYYUkoXf2Oo0gG9eohhILBCa
         DoiQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUGKQhWxGXrp+IXbdVf9yzaoMb5NvBOpECuFLDAoMFHOmR2qab8
	4mpnIZQYNAU3EPINiYc7UrrLeA==
X-Google-Smtp-Source: APXvYqxpAU4UCFYP4OUuHk8s7EeoE2EYpc9oRMm1imkZP5To/vstqxZ9V+CCi0yJt5qPVgqcnqcatw==
X-Received: by 2002:ac8:65ce:: with SMTP id t14mr20185458qto.72.1580662071315;
        Sun, 02 Feb 2020 08:47:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:58a:: with SMTP id 132ls6027283qkf.7.gmail; Sun, 02 Feb
 2020 08:47:50 -0800 (PST)
X-Received: by 2002:a37:354:: with SMTP id 81mr20382095qkd.276.1580662070745;
        Sun, 02 Feb 2020 08:47:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580662070; cv=none;
        d=google.com; s=arc-20160816;
        b=gce6uh0trIw0RTJVEIW18tXLLVv4OhFR7+M2D+UL1ewFcwE6Cbwc7SRsMCKG1wVALE
         CsyxQOJAnWOoHgCYwoS+g1fRDjDkRC+zfNKUdZIsEfLRRHIcJJewBUvDErR7bdSvr2JA
         Zz7+4BVSxV29xtn49Y2qMD6+1v9aTQRtTtX5siDsb6VngBkdp5kDPUJfJvUo8GAZrw8I
         /SxUfBvk0yvNNzfhoY76eajdODqxNPlhQymVtMxJrna5qzyoUhrnVupo7IMG2PGaqlkz
         k8nUxArBrCNcnB8Y0I2dCJvXlAFEbbQtcIAhqNgG4RFbi21AUtv4ufiW+itb1QjApFrm
         n1mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=yxLHbfJ3UaTSp7msvz35rUTA2dv9q+bHLKzbXkMrK08=;
        b=VsssHLYe1Kqy49eIAtmzGm+sq83uMlvVqvVZc2NoTzRyYBPD1deCvkxLtwgduU4mjz
         ZDdOXDAw71APPcCPNNE3NY0GNnSRmEXajbtLR18e3oUTkJt9Huw09X0QTa4IeDjnehLt
         EskTqbteFHMbkJ7NOjrSmsnpGmmAx0adeHFThHW/QGdV0opbI5bZMpoEiDZ2HJyyKTf4
         FdQMhOWJx+7PhFTsa2K5vn585CD/r+K7qsA4QjqNO9TBo6LyAaKE0OTDwVHeQ6nVfpRz
         Ruy8y+AVdMrYUHLJhvaATsa5szhUV1MqpMFqVgLgYM/5elMC7xIZ487j4OOpichexs9A
         bmqQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5e39e3a2@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5e39e3a2@rowland.harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id s40si10229131qtj.384.2020.02.02.08.47.50
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 02 Feb 2020 08:47:50 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+5e39e3a2@rowland.harvard.edu designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 21778 invoked by uid 500); 2 Feb 2020 11:47:50 -0500
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 2 Feb 2020 11:47:50 -0500
Date: Sun, 2 Feb 2020 11:47:49 -0500 (EST)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@netrider.rowland.org
To: Sven Schnelle <svens@stackframe.org>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
     <linux-usb@vger.kernel.org>,  <usb-storage@lists.one-eyed-alien.net>, 
     <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH 2/2] usb-storage: Add support for Ratoc
 U2SCX multiple device mode
In-Reply-To: <20200202093750.4439-3-svens@stackframe.org>
Message-ID: <Pine.LNX.4.44L0.2002021139010.20768-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5e39e3a2@rowland.harvard.edu designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5e39e3a2@rowland.harvard.edu
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

On Sun, 2 Feb 2020, Sven Schnelle wrote:

> The Ratoc U2SCX can support more than one device but uses another
> USB ID in that case (0584:0222) with a Vendor specific class. The
> used protocol is still USB Mass storage, but we need to fetch the
> maximum LUN number as otherwise the controller would address all
> devices on the SCSI bus when an invalid LUN is probed. It looks like
> U2SCX maps SCSI ID to LUN numbers, so we must not enable
> US_FL_SCM_MULT_TARG.
> 
> dmesg with the driver enabled looks like this:
> 
> [  133.157337] usb 1-2: new high-speed USB device number 6 using xhci_hcd
> [  133.170273] usb 1-2: New USB device found, idVendor=0584, idProduct=0222, bcdDevice= 1.11
> [  133.170279] usb 1-2: New USB device strings: Mfr=1, Product=3, SerialNumber=2
> [  133.170283] usb 1-2: Product: USB-SCSI Converter
> [  133.170286] usb 1-2: Manufacturer: RATOCSystems,Inc.
> [  133.170289] usb 1-2: SerialNumber: 020301002197
> [  133.171576] usb-storage 1-2:1.0: USB Mass Storage device detected
> [  133.172084] scsi host1: usb-storage 1-2:1.0
> [  134.199245] scsi 1:0:0:0: CD-ROM            HL-DT-ST DVDRAM GSA-4163B A100 PQ: 0 ANSI: 2
> [  134.202744] scsi 1:0:0:1: Direct-Access     SyQuest  SQ5200C          A0L  PQ: 0 ANSI: 2
> [  134.219300] scsi 1:0:0:2: Direct-Access     SyQuest  SQ3270S          1_24 PQ: 0 ANSI: 2
> [  134.224660] sr 1:0:0:0: Power-on or device reset occurred
> [  134.343256] sr 1:0:0:0: [sr0] scsi3-mmc drive: 40x/40x writer dvd-ram cd/rw xa/form2 cdda tray
> [  134.343262] cdrom: Uniform CD-ROM driver Revision: 3.20
> [  134.350873] sr 1:0:0:0: Attached scsi CD-ROM sr0
> [  134.351120] sr 1:0:0:0: Attached scsi generic sg1 type 5
> [  134.351438] sd 1:0:0:1: Attached scsi generic sg2 type 0
> [  134.351685] sd 1:0:0:2: Attached scsi generic sg3 type 0
> [  134.362141] sd 1:0:0:1: Power-on or device reset occurred
> [  134.483977] sd 1:0:0:1: [sdb] Attached SCSI removable disk
> [  134.513922] sd 1:0:0:2: Power-on or device reset occurred
> [  134.579802] sd 1:0:0:2: [sdc] Spinning up disk...
> [  135.602397] ......
> [  141.707017] sd 1:0:0:1: [sdb] Spinning up disk...
> [  151.346332] .ready
> [  151.353990] sd 1:0:0:2: [sdc] 524288 512-byte logical blocks: (268 MB/256 MiB)
> [  151.361560] sd 1:0:0:2: [sdc] Write Protect is off
> [  151.361566] sd 1:0:0:2: [sdc] Mode Sense: 99 00 00 08
> [  151.368868] sd 1:0:0:2: [sdc] Write cache: disabled, read cache: enabled, doesn't support DPO or FUA
> [  151.428485]  sdc: sdc1
> [  151.465364] sd 1:0:0:2: [sdc] Attached SCSI removable disk
> [  152.178231] .....ready
> [  156.535115] sd 1:0:0:1: [sdb] 173456 512-byte logical blocks: (88.8 MB/84.7 MiB)
> [  156.606445]  sdb: sdb1

Isn't this the same as we would see for any multi-LUN device?  What's 
so special about this log that you thought including it here was 
important?

> Signed-off-by: Sven Schnelle <svens@stackframe.org>
> ---
>  drivers/usb/storage/initializers.c | 27 +++++++++++++++++++++++++++
>  drivers/usb/storage/initializers.h |  2 ++
>  drivers/usb/storage/unusual_devs.h |  5 +++++
>  3 files changed, 34 insertions(+)
> 
> diff --git a/drivers/usb/storage/initializers.c b/drivers/usb/storage/initializers.c
> index f8f9ce8dc710..089d67e99aa9 100644
> --- a/drivers/usb/storage/initializers.c
> +++ b/drivers/usb/storage/initializers.c
> @@ -44,6 +44,33 @@ int usb_stor_euscsi_init(struct us_data *us)
>  	return 0;
>  }
>  
> +/* Function to get the maximum LUN (Logical Unit number) from Ratoc. */

People reading this code almost certainly already know what "LUN" 
stands for.  You don't have to remind them.

> +int usb_stor_ratoc_u2scx_init(struct us_data *us)
> +{
> +	int i, result;
> +	uint8_t *idmap = (uint8_t *)us->iobuf;
> +
> +	result = usb_stor_control_msg(us, us->recv_ctrl_pipe,
> +					0xe6, USB_DIR_IN | USB_TYPE_VENDOR |
> +					USB_RECIP_INTERFACE,
> +					0x0, 0x0, idmap, 8, 5 * HZ);
> +
> +	if (result < 0) {
> +		usb_stor_dbg(us, "fetching max lun failed: %d\n", result);
> +		return result;
> +	}

You don't want to check that the device actually returned 8 bytes of 
data?  What if it returned fewer?

> +
> +	for (i = 0; i < 7; i++) {
> +		if (idmap[i] == 0xff)

You didn't initialize the contents of idmap.  So if the device returned
fewer than 7 bytes, what makes you think the extra value will be 0xff?

> +			break;
> +	}
> +
> +	if (i == 0)
> +		return -EIO;
> +
> +	us->max_lun = i - 1;
> +	return 0;
> +}
>  /*
>   * This function is required to activate all four slots on the UCR-61S2B
>   * flash reader
> diff --git a/drivers/usb/storage/initializers.h b/drivers/usb/storage/initializers.h
> index 2dbf9c7d9749..b3ad7bfadf41 100644
> --- a/drivers/usb/storage/initializers.h
> +++ b/drivers/usb/storage/initializers.h
> @@ -37,3 +37,5 @@ int usb_stor_ucr61s2b_init(struct us_data *us);
>  
>  /* This places the HUAWEI E220 devices in multi-port mode */
>  int usb_stor_huawei_e220_init(struct us_data *us);
> +
> +int usb_stor_ratoc_u2scx_init(struct us_data *us);
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
> index 1cd9b6305b06..46b95944533c 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -2372,6 +2372,11 @@ UNUSUAL_DEV( 0xed10, 0x7636, 0x0001, 0x0001,
>  		"Digital MP3 Audio Player",
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL, US_FL_NOT_LOCKABLE ),
>  
> +UNUSUAL_DEV(0x0584, 0x0222, 0x0000, 0xffff,
> +		"Ratoc",
> +		"U2SCX USB SCSI converter",
> +		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_ratoc_u2scx_init, 0),
> +

Please read the comments at the start of the file, in particular the 
part describing how the entries should e sorted.

Alan Stern

>  /* Unusual uas devices */
>  #if IS_ENABLED(CONFIG_USB_UAS)
>  #include "unusual_uas.h"
> 

