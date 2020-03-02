Return-Path: <usb-storage+bncBD6LRVPZ6YGRBTOU6TZAKGQEEB6BV7Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 11098175EAF
	for <lists+usb-storage@lfdr.de>; Mon,  2 Mar 2020 16:46:23 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id t186sf9023038qkh.22
        for <lists+usb-storage@lfdr.de>; Mon, 02 Mar 2020 07:46:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583163981; cv=pass;
        d=google.com; s=arc-20160816;
        b=J219jwZYOE6uWPc3K0FcT5ern8rN+tcYeedINTNLypD2EZ+QNLt2SP2cZ2wXbOk6mo
         daRC8/68WNf1NnQXHQGfnQ62n3vdjbtqGvfAvvqSut2L4dHIFw5cqVWvOKpEb9GmqfG8
         Jl6CITbYZZDwpKNaeq2bHgHZ3HAVPH3V9qTm3MgAvoGanFftDWaCoBkoDnjpb7ZhMzkq
         9ofsbhPKueaLoCWu+n5M6Z4AsnurJsoiMEluOkSai3dnFA3y6sBpvwCOkDiwWl2rrLI2
         mD6/Gb21cbyT19zRMbkT5DLcPlzuyO1yjH9X7fBloc/VWb0lORvJCQT4iE+xssIPwbtj
         vZMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=2luUQixOfdT1ut7RzaiVCo5m40nBfN9GWnVYSc81gSQ=;
        b=TFw0Whp33wc3eOFaun2w4/5jwyQYHaBVJ22Q61v+9FlqvtIsAfUGDlcUEIxN0pmDbO
         91Dinca0Bu6gagNpBuXcrYfMsjK+lfaX85ThLdygpVguGAZ/WwkBLh5bgF7gMls+2Oq7
         1beloelzFncS+fHdl7vfqu97jY+d5ZM33qW4QSP0apB+qedjBXaNqEsMyJSZpm/CAF+S
         DEF1Yrbq2JMAFv8DmERQoL39rKDYpTD+RmD2OCO/CsW+0HFoS0wqMoSunubeSirK6n2H
         pLw3nFTGKrhHVk1zc7RJyPvS6+voI9QvWHrZixkb0JIfyNAOor7wmlso4tdgWMNFqEQM
         Z1AQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5e5a5726@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5e5a5726@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2luUQixOfdT1ut7RzaiVCo5m40nBfN9GWnVYSc81gSQ=;
        b=TpQv1wF+ZWrPQVHLFck2/UfHBT5d5Z7keUv/VlQ7DqYQMyvKPp1KzoQ6gyWdo2GKbb
         /jN+gKMcWMY5H2w3YXTN33HhHqLD5Zdrdx3zB7MWhb0RuuaPoFScTDPwisd/JK/+2sxm
         TjUxwDg66NMsmCAHJYgFArYiuZvNCav7RLlxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2luUQixOfdT1ut7RzaiVCo5m40nBfN9GWnVYSc81gSQ=;
        b=JwP8RDORnfYBeDhbGiaLvlmoSFRSLl1gfMe0e5/9lmItew4q0iDF08FY7g4Pz2p/uP
         bE/u5GK8aXeSZ3zxkUT4Ktr2k0uLamxdPgcZiRiVkRG4Nwus5Nq8Ct71wqwGPqucqtQ4
         f8kXmSXTavJcki/eus/c2yo35OTtstC5gZBOmc6oCh2izdRCIQ95AUMFtNW06/L/a+xI
         Roi/Aog82520x1nnXms9jpqSpFiIyiwhivWTkuHCs2Dr6/QaOqgrsvKArP/6FpOcszaM
         o7oDpSJNwT1vjeBEySBwFx/huIz/vLkT2NU6divnrX2kp4SwNYQRpCyEs6+/GpQFqzGv
         8+OA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ANhLgQ3fFLVQgI0Q6WzAbJDKugcQB2wd7QSSfXVpP+Vw3nb3YUOER8/c
	kmRjAv0kmzBU6NK0xlL98JQo6A==
X-Google-Smtp-Source: ADFU+vv2TSQ5/IyOoC6Coaa3Szx2HxoTLEw8YO/7hhA7vfBpMy5OJca1MPfEMmSyDgAHC86zICr15g==
X-Received: by 2002:a05:6214:15cf:: with SMTP id p15mr50358qvz.106.1583163981536;
        Mon, 02 Mar 2020 07:46:21 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:4044:: with SMTP id j4ls493136qtl.7.gmail; Mon, 02 Mar
 2020 07:46:21 -0800 (PST)
X-Received: by 2002:ac8:740d:: with SMTP id p13mr317591qtq.322.1583163981012;
        Mon, 02 Mar 2020 07:46:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583163981; cv=none;
        d=google.com; s=arc-20160816;
        b=MMFR/5lmEb9xOgYISkwm5toUYfTcD8YGnfueJrMyxntvLmUdjG0M6ZYOt7cSCpUium
         qGSInX1Ja0km4JTMus9T4w/2HNG6CPpLDevPhORADmGT5QJ9axdDNqsYDp3s9mBexq3H
         h+ssjhXo4+GuYyKqwGpJwVZTjGmmPpqvaaIo2HLQJ3uh1KkN/K9KmvS5BoSwZxkmYBxV
         Z/tL+yBAMXOtny38LaZNJ4cPWl9M+96CvLShJdpwv1DJC9pi5qbna8AuHiE6AHyugLgP
         n0BXLukA6gQCjuoFHpbWYEDKwis8dAfDtU78K76Sg5fESCmJ4/hGThi82p0SSNyahVtU
         I7Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=2luUQixOfdT1ut7RzaiVCo5m40nBfN9GWnVYSc81gSQ=;
        b=HWWXuO8N0G9Yx5xNiXF8053+Z0wk1pb6W49UB87MUb0Ouwf5V6U4c/jtR1LSEVnAsE
         VmoKJPkjD9ifrkkFdt29rH0J9TyqIBxr+rxAWnVvAvuJskuOIVocnkuG8Jue4f/6CcCk
         36rt2G1yZwvNdLnEZYXIobrcDR3mVz6s2zDJ+1MlEgnt2plbsSVaG5vG1UR+88AxnTCS
         fOi24LjB5+guNFUW+GB71Aj88pXzFiGnXPR4p0FbDHd17IIAvKDZdioAlKbhRgystj1D
         3o/ZY8McFgUYf5oGrnxfFBvRGGRqRFrZmknFz1u4jnqcq8pUJZu4nHyi7GQJkUcCFGOw
         3f6g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5e5a5726@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5e5a5726@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id r4si4631066qvn.113.2020.03.02.07.46.20
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 02 Mar 2020 07:46:20 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+5e5a5726@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 2068 invoked by uid 2102); 2 Mar 2020 10:46:20 -0500
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 2 Mar 2020 10:46:20 -0500
Date: Mon, 2 Mar 2020 10:46:20 -0500 (EST)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Jim Lin <jilin@nvidia.com>, Greg KH <greg@kroah.com>
cc: USB list <linux-usb@vger.kernel.org>, 
    USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH 1/1] usb: storage: Add quirk for Samsung Fit flash
In-Reply-To: <1583158895-31342-1-git-send-email-jilin@nvidia.com>
Message-ID: <Pine.LNX.4.44L0.2003021045280.1555-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5e5a5726@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5e5a5726@rowland.harvard.edu
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

On Mon, 2 Mar 2020, Jim Lin wrote:

> Current driver has 240 (USB2.0) and 2048 (USB3.0) as max_sectors,
> e.g., /sys/bus/scsi/devices/0:0:0:0/max_sectors
> 
> If data access times out, driver error handling will issue a port
> reset.
> Sometimes Samsung Fit (090C:1000) flash disk will not respond to
> later Set Address or Get Descriptor command.
> 
> Adding this quirk to limit max_sectors to 64 sectors to avoid issue
> occurring.
> 
> Signed-off-by: Jim Lin <jilin@nvidia.com>
> ---
>  drivers/usb/storage/unusual_devs.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
> index 1cd9b6305b06..1880f3e13f57 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -1258,6 +1258,12 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
>  		USB_SC_RBC, USB_PR_BULK, NULL,
>  		0 ),
>  
> +UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
> +		"Samsung",
> +		"Flash Drive FIT",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_MAX_SECTORS_64),
> +
>  /* aeb */
>  UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
>  		"Feiya",

Acked-by: Alan Stern <stern@rowland.harvard.edu>

