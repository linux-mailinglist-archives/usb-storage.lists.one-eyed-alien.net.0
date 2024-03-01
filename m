Return-Path: <usb-storage+bncBD6LRVPZ6YGRBGUQRCXQMGQE4Y6OPOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ua1-x947.google.com (mail-ua1-x947.google.com [IPv6:2607:f8b0:4864:20::947])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0B286E63D
	for <lists+usb-storage@lfdr.de>; Fri,  1 Mar 2024 17:53:48 +0100 (CET)
Received: by mail-ua1-x947.google.com with SMTP id a1e0cc1a2514c-7d0ac939b9fsf1543827241.3
        for <lists+usb-storage@lfdr.de>; Fri, 01 Mar 2024 08:53:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709312027; cv=pass;
        d=google.com; s=arc-20160816;
        b=L5H2iWwxmpqeD8MDavzmycyhfRpuJElyChxsDMeRjRrz1pY/GP3WyIbK6fy8dzMS4s
         aGYwk/4rnvrf8Ba6oz8ydlP/orWdNT1a2HXwWE3v/61LHR6L2Jqok5X1MSLc66L3+nLf
         TY5tfPYRN9zwUXuNmzbNV6H+waeVvMxO8moF+96rk9qLlG/o0XWdlLtwho9ePgJL+I7q
         PZfZUnJKLGrLOrsNhdwSqthIn+nwKa+xLJXoYzlc2YsHS7BTGoIptetzRUt3JcEbJOYw
         tCJJt+3mpGB83bU+GhI6wrWb0Hc3Zv4h+qP4lvi1sqW43yO97UkwVuyNd8fBvZnh9igI
         yLaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XHR+/88KKpIzj3bytDAfGtF6Vt1RGm9BUcY+YN3yM9s=;
        fh=x0kezU0wNUdVXMv5jt6mD39kICZmEwEh5KNMaLhttLY=;
        b=eh4S7d+uzn/GgT7kICywn4W1pbp0/mZOk+943M38bhJncC8++8thjZFOhJf/LmadzO
         AJtMwJnWB96DCA6NnYoLuyjrsclwcYKnQYERljmc6gVSDC4uMw8GLK8yw39LJ8wNv1Wo
         tpRwswLfhGuiqT7DZ37dwgIHxK6ifjeEsqhJ/0uJBF3j6GmSSsUonzIEIKIJXobWg448
         Zw6Y1JY0YmLKq2AoHdzhyjESoClowvnqQgTccVwE+EgH1OV4PrlpmnNCk8xQxOA6r/OC
         c7YJIBTxmb3/INtB6sM1JvCTRJjM3sbPWBQEyOa7/Jdhbt4GplQFK/uJH/pqlDmGtCa8
         fSuQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709312027; x=1709916827; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XHR+/88KKpIzj3bytDAfGtF6Vt1RGm9BUcY+YN3yM9s=;
        b=Alk6qFpMWjG1wx6GWRCtjRHIuEBUPzB5UzeG27Ww97/jArfWHMNC3iWuLqW7jCjQDZ
         RXGfUcDL2n2GB1bebS1yoFki5/W80CPRLDefau52v+nWuTojbhi4AWE6o0QHv38MxBVf
         IwjFgYV/nuEqHlnxJsSpotdnNyg2FyGCAEulo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709312027; x=1709916827;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XHR+/88KKpIzj3bytDAfGtF6Vt1RGm9BUcY+YN3yM9s=;
        b=TWcjlcALK4UsDgKt9CxKKZPI/OwXv/o94CJMdGAUkwrQ5zSTXPqXVyuVFLp4ZZNXBm
         /i+8oDVcdV79UzkT6O/4Q8bk0omlmMvmjGZstRbr7I3nS5i3kMXH1IaxoHwYOPIGlW82
         5pyR1MxOHzmaiMhHsPdBO2sKE3YWaNAhnJ47ecBddXoH5t852cuLyvKe5jqZmmIvsXcf
         Ar8smcfVIiiYW8MYLRUiT5OS3rmnBy0DvbeNifoxB4CppRBoa4B9hTSnKLuS0vodKoRC
         Ud0AtlHrtVlh4OjhJLYt5XF6aNUciKMOt3ODCeWT+3W2VCMZ8dSbakft+jdpb0bb2ZmN
         Be9Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWqsIQnt64OjdZRSmuMXi32JDMGVIrTTaxT1h7/7OdGkOd8k6dye2+zMw41ukRzNlEQd99doTEVEGDzGxgqZYkK+/OlMeeztLuc
X-Gm-Message-State: AOJu0Yw2eIy9h4483EMLPwbXISolUPr0PCqDqRNfrt/g/j7em0As11Ag
	r6dEPH4y5vzDZQL2vykkhsua3ZZHa0C/8uca8v3xj4Yl+LzjhPjbvRD2zsvgJu8=
X-Google-Smtp-Source: AGHT+IFUO+EympsAczh+yY2k9A6HmmaDRiiFy7W2j0WZTMMxNlKTaERMX1cUrIeUOg4PEGH3K1ycew==
X-Received: by 2002:a05:6102:19d0:b0:472:a1db:f17a with SMTP id jn16-20020a05610219d000b00472a1dbf17amr1037334vsb.31.1709312026780;
        Fri, 01 Mar 2024 08:53:46 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1a23:b0:42e:bb95:2ed8 with SMTP id
 f35-20020a05622a1a2300b0042ebb952ed8ls2316798qtb.0.-pod-prod-06-us; Fri, 01
 Mar 2024 08:53:46 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUq1kXc3W3Mkg3WJFhmFUx14psBMCCg92BcgXZ6uIQObiUy7OIbyo91tK4nuF/QE6tvdS6BQk7LQ7zcjAhXFfe30GufywAYCR4syu25M+CjrUSFEA8=
X-Received: by 2002:a05:620a:40cb:b0:787:a853:607e with SMTP id g11-20020a05620a40cb00b00787a853607emr2648989qko.58.1709312025757;
        Fri, 01 Mar 2024 08:53:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709312025; cv=none;
        d=google.com; s=arc-20160816;
        b=re/si/AXoN6zTF+V4EqiNotB0zjEDPngbtrvfRjyeDVcYr9/Eh2bn7iR5pLc0JMJ5t
         FfKAiGHNuxXmE7+Zib/wRICdn5fQoFNJhPWcaUbycz1AMWvujZSACrBIG74osK9wIheX
         xe0efQf4rE15Lnk8+lnkofRiBbiI4VL7szCG8dwpYRJVJ97fyXM1W01aVhbPwm8F8DYk
         9UqNxAWN/RrBULoYY/2FgusniNhrbl4L5t4H63A+JyvCKyQUtIl8lIu/rLH5phRLhAil
         SrvmN1dsyRuZT6XLI7atM2QcGapl4od7u4N5n4C3tYxM8b/NIGXyevwxFyDBxjE8pw1p
         9DbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=bIo1KCw7ZxdmfgCfGv8eVZlqSF/iqLJ3syGfh7C4OAs=;
        fh=8MeedehL+Go/K642bsBRlGiwNsLp8ASx9otEgjEmA+M=;
        b=JG341YIxwGZ5D3m0l1scKkgqI4/mNzhshUmQCMlKueUWqNVsyoSEVOOuhlV0v5KKHq
         uSbTiwhFPVBIlykxaMh1+R3vU8hnjaHHlyTZYx0DtdF87EWiXUjii1TdWAH/4KnModn4
         zsYUkVXxyHI7SpPUvYIqIULACt9w6uQjuqI0rS/zZ3ON2TTwwaFdF79LiIC3/3FtJvM+
         jaoYJN0vdisPmikyWcX60B3PrZbvuQoPKVWALH8UdoXFkC91HQ1MkbDgqWDTTOGPkqyZ
         UkNkUgijue3yuvX1fKcciph6f38W41eCx1x35qPyAD8xzgNTy8HC2TVlYVJQsnBweMbC
         Q+Ug==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id j6-20020a05620a000600b00787b14c3f31si3780244qki.515.2024.03.01.08.53.45
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 01 Mar 2024 08:53:45 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 39476 invoked by uid 1000); 1 Mar 2024 11:53:45 -0500
Date: Fri, 1 Mar 2024 11:53:45 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Tom Hu <huxiaoying@kylinos.cn>
Cc: linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] usb-storage: Add Brain USB3-FW to IGNORE_UAS
Message-ID: <a960f1c2-a858-498e-a0cf-4c15d74487d5@rowland.harvard.edu>
References: <20240226075936.1744353-1-huxiaoying@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240226075936.1744353-1-huxiaoying@kylinos.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Mon, Feb 26, 2024 at 03:59:36PM +0800, Tom Hu wrote:
> The UAS mode of BRAIN USB_HDD is reported to fail to work on several
> platforms with the following error message, then after re-connecting the
> device will be offlined and not working at all.
> 
> [  622.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
>                    inflight: CMD
> [  622.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
>                    04 00 00
> [  622.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
>                    inflight: CMD
> [  622.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
>                    00 08 00
> 
> These disks have a broken uas implementation, the tag field of the status
> iu-s is not set properly, so we need to fall-back to usb-storage.
> 
> Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
> 1

What is that 1?

> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1f8c9b16a0fb..98b7ff2c76ba 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -83,6 +83,13 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_REPORT_LUNS),
>  
> +/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
> +UNUSUAL_DEV(0x1234, 0x1234, 0x0000, 0x9999,

The vendor and product ID values have a suspicious look, but they appear 
to be genuine.

> +		"Brain",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
>  UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
>  		"Initio Corporation",
> -- 
> 2.25.1

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a960f1c2-a858-498e-a0cf-4c15d74487d5%40rowland.harvard.edu.
