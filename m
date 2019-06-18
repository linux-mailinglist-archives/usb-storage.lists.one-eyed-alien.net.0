Return-Path: <usb-storage+bncBD6LRVPZ6YGRBEWXUPUAKGQEDLUHUHA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8D34A2B0
	for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 15:48:04 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id g30sf12422549qtm.17
        for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 06:48:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560865683; cv=pass;
        d=google.com; s=arc-20160816;
        b=ecfUk1ct+ka+Yhy4Yy+UylxLQ/9kJaFLCepXbfXoJge/oqgZrAFNbzMc7pnyJqPnMU
         ASMT50ZQrtvg29XiEdcWFkKeQX8b9U8+2ITlHLjLIlwbweFlcJobUCUSKvmmTWSxSdXr
         pdm1Fz6BtYjPf1vvv5hHwqQNFu+SrH4/TumEFAUmDvcxSPIBwYDM6go99kO1qfVzYqYI
         38EMGRD+bqFUKodNM2UYYV/Dd4fZdM8LrFkJ3+LtHpoPX49Lv6Cs2NTcsfk3AY02Mdi3
         FbvdxAyJZR3kjdX8OPPpydhffVmkXZfLYT2lohjXuSQyCdzH4K9qyJbS5Sq1wtqymHDJ
         UFTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=K/sf3lGhjZvFoeh9YFAZT5RkuXxbEb0DlyJTouuSGxQ=;
        b=WW9i7zwdMRdkSxvbm/ZXmEoAT3opb0pIA2+o2UtDYu3hVnAM6TwGgknyLxRoS1K6qH
         03Y86CkfMIc6sycF0H3AonhTkDQxt6gPLpqGmBVYK+DG5klfgHSOnLQHGjT1ISi7zshZ
         1K/LCJHXbm8xl27wR7cMwPpZsk4Wb+XBATrJ5Tik00sd6oB3eASB8rN55HsZhK5lr2Up
         w2NfGk2x06WiMl24hIOZU28OrPsW4lz5xceoNNBlhBdc1D03OCsiI2SGG4zg6FA7r2OS
         i4EXaRmtvv0VL3V/a12Wrg6sMvfioFujDrJ8kArUJjLRPquByfHXm/ur/+NTrHQJ3a1q
         MdbQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K/sf3lGhjZvFoeh9YFAZT5RkuXxbEb0DlyJTouuSGxQ=;
        b=dWczxSHiGcH85GCb/is0YR6axfSKJ/ZJn3gSJqdK73zGKXO6ZpNYDnv/fovJa3bRCN
         M8+FW4AZcO+f/zrRPofFPYmSMVKQIAmCZ0x5ce20r49BWZOsNXkhYFdUGWwiEZzNmr2X
         W7yyNRqUjkV/MGtIVasSR62qe7HK3HRadmKQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K/sf3lGhjZvFoeh9YFAZT5RkuXxbEb0DlyJTouuSGxQ=;
        b=VxyGUKAyetD5AI+PYQyjKiRqBQYf/0XkeywH8xj4Q9/lF/najllSP5L8pisvTZ7g/k
         KVWSKMOnxo03LGBBfcrQNjEgzVH4Ypp4bi7QawAKGiI4cLaeCyccybX5L4Xp+ZGz+q2D
         wUbTdng2MtlSJ/MzWc0KOayWgSCtlcpSY4+GplclzzMBJJq8M12sR4YW4/d8VgawqYe/
         6OViiykEuKXAV/JhMkoZlJmHJXCtOV19Xzn2Kv7Tm6DQo5A+miiJPbSXlfSYgO5Ikh9Q
         odRKhE9v66BhkFh7zr0nOXQak3JKIcbyoskkPMphMaUXN5Z1gLiRJLAqsl3t/T7paDkm
         zWXw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWwVPLi8a+A+6usgz0cHO9tFOXU4HpnTxhW82uAPmdwRXPd96tI
	W8BANlWxtC1JL28hNE00Ktkl+g==
X-Google-Smtp-Source: APXvYqwPtYUVG1Dj2nqxrfxH1nWstGIv413yZF965vgGNKpYFPh5L1nXn+R/m93fAXeDuRHLAJJgLw==
X-Received: by 2002:a0c:aed0:: with SMTP id n16mr27691756qvd.101.1560865683150;
        Tue, 18 Jun 2019 06:48:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:ad92:: with SMTP id w18ls188531qvc.13.gmail; Tue, 18 Jun
 2019 06:48:02 -0700 (PDT)
X-Received: by 2002:a0c:9233:: with SMTP id a48mr26639828qva.66.1560865682747;
        Tue, 18 Jun 2019 06:48:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560865682; cv=none;
        d=google.com; s=arc-20160816;
        b=HyqqSBUjV+xCoSmM9nv7qSJcmNdqnZV/CFm48/QwpRQyLIAFIQc0hvkPQ/Qj+NwDFZ
         CxuvueY7xBjjILbW35wx2hWfRauNIxiEWiz1hncUka3dORbaiWeFAQAkqK+EnFJnuSC3
         zc+whDXmF1jYnvpmPfA5QLMt8AOFkVrqi3MA0lwNbZXJU6rnpARxxhQ/UasFf2EthtLU
         7uudyiy5iDx+XhWcaMCYlTQJtdu6OObL76ojIjT9nTKG7RZMx1WDp41dNhkVaUKrOcoQ
         WZm26ZgAL3x50xD0ayjSmolbCAoYxafd0y2JtU8wEmtxTACAVmoX7UAgLZRlTF0tnjAd
         iJiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=K/sf3lGhjZvFoeh9YFAZT5RkuXxbEb0DlyJTouuSGxQ=;
        b=IhLDDwm7OuV4sCB0KG+F1vxymeLCDb/35sqv8HlBo0q/nx8MmeAO+vgqgXmNUvENYY
         t/Dpjt0HyfRKIUVAyJ6ioN56EcGnJC5vwkc9/pDitDYL1Yogo8UqASaTZsu6lvVPU0Mu
         9Yx1QkEaiAMpJgv9Wre4F8L3HvYXeV4tQzuwHH3j8QPq5kOpuyPanAuKCIgGFx+RaOLg
         MO+IJ/WB6HYO5Z+WXF6bDZZaqV5lHAqkQNlMtRpFHg/nFZI3okiVxs90CBbWT0C+AdLa
         tUSFrDJNbnbdC5QP6IFbuzh1IiBhUpSJBymOF4CLf+hPUCNZTwRbVDuw9Si45hhMnmtS
         lz2A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id e7si280316qtc.98.2019.06.18.06.48.02
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 18 Jun 2019 06:48:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 2328 invoked by uid 2102); 18 Jun 2019 09:48:01 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 18 Jun 2019 09:48:01 -0400
Date: Tue, 18 Jun 2019 09:48:01 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
cc: Kernel development list <linux-kernel@vger.kernel.org>, 
    SCSI development list <linux-scsi@vger.kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    "open list:USB MASS STORAGE DRIVER" <linux-usb@vger.kernel.org>, 
    "open list:USB MASS STORAGE DRIVER" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH 2/2] usb: storage: scsiglue: Do not skip VPD
 if try_vpd_pages is set
In-Reply-To: <20190618013146.21961-3-marcos.souza.org@gmail.com>
Message-ID: <Pine.LNX.4.44L0.1906180946160.1659-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
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

On Mon, 17 Jun 2019, Marcos Paulo de Souza wrote:

> If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
> be honored, so only set skip_vpd_pages is try_vpd_pages is not set.
> 
> Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> ---
>  drivers/usb/storage/scsiglue.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> index 59190d88fa9f..0a9520780771 100644
> --- a/drivers/usb/storage/scsiglue.c
> +++ b/drivers/usb/storage/scsiglue.c
> @@ -195,8 +195,11 @@ static int slave_configure(struct scsi_device *sdev)
>  		 */
>  		sdev->skip_ms_page_8 = 1;
>  
> -		/* Some devices don't handle VPD pages correctly */
> -		sdev->skip_vpd_pages = 1;
> +		/*
> +		 * Some devices don't handle VPD pages correctly, so skip vpd
> +		 * pages if not forced by SCSI layer.
> +		 */
> +		sdev->skip_vpd_pages = sdev->try_vpd_pages == 0;
>  
>  		/* Do not attempt to use REPORT SUPPORTED OPERATION CODES */
>  		sdev->no_report_opcodes = 1;

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Although I think it would be clearer to write:

		sdev->skip_vpd_pages = !sdev->try_vpd_pages;

But that's just personal preference.  This is okay as it is.

Alan Stern

