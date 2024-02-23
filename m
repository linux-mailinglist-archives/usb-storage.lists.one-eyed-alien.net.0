Return-Path: <usb-storage+bncBCUJ7YGL3QFBBT4E4KXAMGQE5XGOQWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BA286106B
	for <lists+usb-storage@lfdr.de>; Fri, 23 Feb 2024 12:32:32 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5a0333a9fd6sf275500eaf.1
        for <lists+usb-storage@lfdr.de>; Fri, 23 Feb 2024 03:32:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708687951; cv=pass;
        d=google.com; s=arc-20160816;
        b=XtrAW/yh8592dHt/Iwephg+p5dV3imm5yTlkh+Lq94/RjHCY/JX664ZZ/tS4HaSQdz
         OCG04qAshE2YOtPmbX3TAkndTXuocPhiOQgE3pXpV5lnPejg3l4+1WzLaREEKhOuO7J5
         myL00SNgCrUEeJVzat50K+eRtqHmbj26jsboIXhc4jDdf+PZjM/xgTZgat2NVspXIWFU
         jX5h85Glo1ioF1Mp7tsMnhvSGXTPbckNHi8cv3OREfMkluEzufJGsgg750MlMccWhxTu
         XldOF8UtTylhGJCJSxk5jfrDF/L6mlYERsFNYPeTYBxdN7C6bJKEMmTPMVDZEZJb1mTR
         2ZfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qEMPeYVT9UhYP2DVX1GMNejiOgL1hSqGelHq86ZxMAM=;
        fh=cFlfVSB89Wg3Cj+Y9+jvJSzz8c4rWkY6HCKotuQvq2c=;
        b=piK30Ck8PcHXYwghGrAXfXEYzEZ0v3wvCb1ewdsbZPW2a1r3KscPntuIHC7gBtaJVu
         x55OFafyXAB1Su4XC7Txxzr0awovZK2dvCno0dBdu1L0dNYYLdaOt4cFGhHuVwg3fE93
         kbOBrajLuSOMhhQ7QFmF7kRcYSyb6mDKni10onPnaP58RBn1WvKVGkjkqs7luNAhxDev
         hy1KTrzmuJPgdRZS2OGb2BKGviDZDvh/g+G20J30VBb+Rbhjivc8OPkEw6ZK0OGq7kRN
         nBunSSyJpi6a0+BPVp8pcQ165aQDCLNU4QEvvQDP82zQ25PE6ACCoOdvDqHkKusfBV48
         Yqzw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=d+Yjx3Yk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708687951; x=1709292751; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qEMPeYVT9UhYP2DVX1GMNejiOgL1hSqGelHq86ZxMAM=;
        b=YS+dFBP1Q+5PROwEZO5mFfexeISVZZGMlpLlkrd1T/xyn3NQhiCSiPjBSVZ4i9+W7l
         MXIqqwNEBexGA4FwKNUPu4y9hWfQpvm+yRmnANEo5X8Scu7ZpXfZ4/uU5dnxMFRIkkdS
         ZEfGHrGOVTOeQg3jV9JyVtd+5TaljjNjlRqpo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708687951; x=1709292751;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qEMPeYVT9UhYP2DVX1GMNejiOgL1hSqGelHq86ZxMAM=;
        b=hSeQGNhN8Q+Jjxp+uW48DMOGuMUS37Pmjod2wM3Yus8Gp0SSrcm2Uz0B4YVlZvthlc
         YBoBx36o8yJIZqJxdBgdh49ileEiE/d0toxaS55L3H8HX0pCRV6Bh0FuSW/Fo5uOITef
         8mIFDANvU4s9IYEV9/LVayuTfER8AK48kgLsDLRtXdzSCkKRyztFg98kY1wWMVhcQ6+n
         NkTI7ySTzgrb1x3zxAVF9FD4Db3/fBI/xs+ekSvl/Kqyt7YLaUxijYnPcICRsKLFbfWV
         zxl2JHNDVI/LwHEv0fc0oEMSfhDKtiHM1OeMXWAIqe7e0R7pau/TGHH8Dpk63vCwLeSe
         Ah7A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX0lvKwkvt8onSPzgEH10/irBRbKzyFoqA32uV/qYLUo54y6h/SzyVR4jy/66CGoOP0bWub5xzXmtaQ1EGmO3cfsr1VFzPRkD9Q
X-Gm-Message-State: AOJu0Yx45W+emCuPbvQ/BIzqk4vmgJtv4rWe9iTSO1Eg7Kg4ptKjZYpP
	WoSIyt+u6n1w9YhbXKRDep6DCjxW0qruc2ms7N4nzphDdxW5TR6YS2WhxLneD1w=
X-Google-Smtp-Source: AGHT+IFo93SYwcH1SPEzJTDioBDzDlpViWgohNGAKaUedlueBwSGPPAfd7JxpVQBLcPJbw7uNqNQqg==
X-Received: by 2002:a05:6820:1f8a:b0:5a0:4216:c5f0 with SMTP id eq10-20020a0568201f8a00b005a04216c5f0mr1522187oob.0.1708687951385;
        Fri, 23 Feb 2024 03:32:31 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:4bc7:0:b0:598:c9ef:f0fe with SMTP id q190-20020a4a4bc7000000b00598c9eff0fels543327ooa.0.-pod-prod-06-us;
 Fri, 23 Feb 2024 03:32:30 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV+n4pURaq5+jvF2zT4aD3pCQ5tzNZfnSGoLW9lML2kgzBtuEF2M86KfL92lhlTcWjBfbh/3nIgpmfNTtMR8gcpqvQGiyKgCxft/mL1fdEsPlYEvEs=
X-Received: by 2002:a05:6870:d611:b0:21e:89bc:31a5 with SMTP id a17-20020a056870d61100b0021e89bc31a5mr1572793oaq.16.1708687950528;
        Fri, 23 Feb 2024 03:32:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708687950; cv=none;
        d=google.com; s=arc-20160816;
        b=Up3e8uD1/jUsl92qdgkxSNYoOuNNKECK8ZSM/S6fgWAk19py5hPazzfZlXaxXiIZmU
         tcqmyVUhmO2bHdmU3KLarr6JxR2YDZjjmTNFVdivgUKuWyB5YokEZ6n4TgjGDSYRx5ky
         3RwjuLKw+JStp4yOisK2aN2BJ6PjFg3yo40ZO6u9X6x8AKK0av7s+b10A0JL1KA4Cu75
         vP7mtwY/dFdbSLmTC3Pz0tdJ6DbOXwI3+HfB44Vn+4hmc5tW1R8bMeCOsuvMg9fZljon
         554HwdsNkiQlaHXI7/jWlo4OQ6v1jmWY3m3E4TU330YnwwMpf2R7xjTPgt8fYEG56G3g
         L7gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YOGFrJnXZ6nRR+9lLTetTezIZ6fVzt6ZPVH4CngOZ4Y=;
        fh=9YocgPeBmmUd0pYVDY9Wwnft9Tq+rR2+qdjYqRmsWjU=;
        b=sc8U6tG7ABabas+6qiICGwNaEBcJodPAapuENySbQ3axc0uX0MOOdyBpnidNuFatmr
         /SgnL1hIGkEUHIPoBAR6gMt7ih2Jq0uu4uC0GEZayiL6imLkHSiNG4TGxllk3GS8som8
         nIxQK90QL4D+WhjVRGHLq6asHWhoJWf7gmmP98ME0AVp2wngUeWXG33G4gStwvGvobSR
         BLFl4GL804x9m3IeQ+SlxPUlrFhAuMMWrG0HT5b/r3MvZ3f4QlpBDk0C1uMklB8d+Riv
         km3iyMyZ3LCIYhBUKlqbqrVFOVRjaIpiZRewneoW4HoDK+2lS3gwvmc0Femv9KxHgugO
         2kdw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=d+Yjx3Yk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id i2-20020a056870c1c200b0021e53d69601si4102254oad.314.2024.02.23.03.32.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 03:32:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4455A6342F;
	Fri, 23 Feb 2024 11:32:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98239C433C7;
	Fri, 23 Feb 2024 11:32:29 +0000 (UTC)
Date: Fri, 23 Feb 2024 12:32:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zijun Hu <quic_zijuhu@quicinc.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] Bluetooth: btusb: Use right timeout macro
 to receive control message
Message-ID: <2024022318-tradition-pauper-798f@gregkh>
References: <1708682416-8664-1-git-send-email-quic_zijuhu@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1708682416-8664-1-git-send-email-quic_zijuhu@quicinc.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=d+Yjx3Yk;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Feb 23, 2024 at 06:00:16PM +0800, Zijun Hu wrote:
> USB driver defines macro @USB_CTRL_SET_TIMEOUT for sending control message
> and @USB_CTRL_GET_TIMEOUT for receiving, but sierra_get_swoc_info() wrongly
> uses @USB_CTRL_SET_TIMEOUT as argument of usb_control_msg() to receive
> control message, fixed by using @USB_CTRL_GET_TIMEOUT to receive message.
> 
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/usb/storage/sierra_ms.c | 2 +-

Your subject line is odd :(

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024022318-tradition-pauper-798f%40gregkh.
