Return-Path: <usb-storage+bncBD6LRVPZ6YGRBAUN3SXQMGQEJFPLAJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 247BA87DDB8
	for <lists+usb-storage@lfdr.de>; Sun, 17 Mar 2024 16:04:36 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-68f7572bc3dsf64972716d6.0
        for <lists+usb-storage@lfdr.de>; Sun, 17 Mar 2024 08:04:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710687875; cv=pass;
        d=google.com; s=arc-20160816;
        b=E9O6eOM/IzSs6QbamdZ9suYDpbrnSnZv/9Mo1Le5HdgAg6s4wJFeUhNkxSseMGHgQ5
         cwvV3MSJnB0346GTUPI9pGT96enbS9AwUj1hF7og46UhcD7H1WNFsSdbzhpIIbIC7nOL
         1iRUsy6meUBKPP8x4Ejtcd5roMaRU2doMD+5Hce3A0+NYJzeP3WlsO4/6f8LzoHjFGFX
         MMHECOEMrI34/8BgO/9h9hlwUBzKWci0DhzV88o+Y9Z02g5MIbC427XIU42HXTjoZP+z
         rv6wBCjIKuLvHqS1KB/nbvX9sBQxT3dfXIrN49FgoEPDpWNRgtlrYsE9zqgDORjiwSAS
         C4QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=C9TwowGO/xYQ7onfVR/J14aIXNODHlz24i8Zw6/9nk0=;
        fh=rh41vUz18wxjXtlXYEToLg0O3X2NHxRDWHKSQ+Bx5AY=;
        b=NqukCXJnJHhEnVHyKQBWc7EaW6oy8oD2msdD607dzFI3p56XK5QAP2PhCR+VecyaMY
         4d5CujwR2LRfP5EerSGzoatlSe+c3vYXVplpSiTf51dHIQsYa/2N2Yu550NmgR9Flm9h
         MD4dWWrRA677R7OO8xbwB3xNWwbsBuYsHFPZyAXORGH7Cw+5F4bvuECPsxAqx8ZgkEES
         xhZKY8fyoYKOALWGnBlGOOAvFfqs6UbfohctrxldE1OzO7hW0spdf8hjlfechzOAp9AG
         g+Tv5bSW/CTTUTNy+QdqWnedwjIoWiu660TRXLHmnbxoSdE0CLy7DqumkC130sLwDFN9
         7ldQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1710687875; x=1711292675; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C9TwowGO/xYQ7onfVR/J14aIXNODHlz24i8Zw6/9nk0=;
        b=iZaQ03IeutGVJ50u6gnFgVlZReC6N9Zgv+Kk2CKgH40jLSIL5OXiMr6X1EQbqVQeC1
         Ev/AijN1/Dkmunh7bYG6IZ/3SmmzcuORDsgJIhRS50VzKImSFl26+LIHzkPDtjgm7GwR
         AxqiFVwlipn8gIR/EIvFI4zLyTZzsbPgc6u9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710687875; x=1711292675;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C9TwowGO/xYQ7onfVR/J14aIXNODHlz24i8Zw6/9nk0=;
        b=rrG6Qk/sxRqD8R1M+V95WTYFtgG9JFs91aryQ4j01lqd/wt8CcHxM9wXg4uHIxRMgi
         5y9rFL/Bp7uRXf4qIkMOiIH8bCUZNaljmzJmJ4xvoMyluJbaM8sBaEHYprabQXj22WAW
         DFHQwvF5sKoZc+S3kQB3mor6Swq7b4nvhqGIDMF8wyViGUxZ098KANP4obYZW+OytLB9
         O2UEXf5kvp9da9RqtKoB4IT2b1M3sK/fAXtOjCbwH37GPaC7MJqz9AGEmBRXSoXmRRNT
         tq3/hIaYa9CDBwN4X/XiAxxkjeQwmeAXI9VudzH4Zxut+PGMYDlaIHB7toBXe6XlNiim
         GXwg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVk6mIjjiASu7JNHgYuDzkhR0oMnTt4uCxm6r0/hX33ssc6Uev1WJx7Zy/3t12c7QNdEStSGRFZ3tx+a0pn8wXePkVM4oFc7LgL
X-Gm-Message-State: AOJu0YxXH0JfMuegooMNFZHUSxTO3QVzO3AJJXZutwjl1+4q1CQyPe1/
	3uUMKZ7681a4ioisaMVQx+6TOP0McdzlywHO8NCZyeRDs1VD6PMOoEczfFSj4+s=
X-Google-Smtp-Source: AGHT+IFjfqEyppfANFnQ/9+fOCD5ZDMaRsUWgizmkQKh9fw3iUKoqWta6bZx5IgB2Rpyvg0YmxfpaQ==
X-Received: by 2002:ad4:551b:0:b0:690:b40b:8088 with SMTP id pz27-20020ad4551b000000b00690b40b8088mr9440864qvb.54.1710687874887;
        Sun, 17 Mar 2024 08:04:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2241:b0:690:c950:c414 with SMTP id
 c1-20020a056214224100b00690c950c414ls1627338qvc.2.-pod-prod-09-us; Sun, 17
 Mar 2024 08:04:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW2XDwv/lEHBGUqNyCsE3QQprp/OOsO29c5FVlJK4kA563GE+CFDUHES2pT+L4P1a6jWGkGeCG4Jkiunb76iT6wB+CA7dBmDujGv00+D2SvhosMIok=
X-Received: by 2002:a05:620a:31a3:b0:789:f5bd:9443 with SMTP id bi35-20020a05620a31a300b00789f5bd9443mr3960530qkb.38.1710687873947;
        Sun, 17 Mar 2024 08:04:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710687873; cv=none;
        d=google.com; s=arc-20160816;
        b=Y2Np/+UwlvuBwlDYaUF5xYqRsNEHzaTJh/SqXdQVpruB5ylwAXiLBXsd5Y7+Srkd67
         /zwiCcR8BfjDQAIGR8gfLtrEZF1xsLULEbiQNVNdgaRGSqWWselpfibySsmB5rFXI6pv
         1erEzU+DDceOZd4fATWiAaPS9Ri3Y4tgjLNo4ia/Uah4WpPyLUlhQClMAyDZIIFZAPNt
         uKt9pIXPNTLoCwlWm4LY5AII+ltaIL1107IHZYCpLZrdcNRxLg+R2IrJzMu+KjKfAu1Y
         4hnHH7azwxy1AX12pYEgCa409LAVddPN6QA/MTy33iZs746POg/dkQu/u+DN42FENq1z
         rGrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=/JStlDvYPSepnxLxy9h8O7aY3orCiJ/yPpvlauGh7rs=;
        fh=S1iVII8LnHmSeDWH7aBMhlWFHpkLWe50Cr1LYlhgoAE=;
        b=wGRajMd5+2HchQW+Mf3Dk1IsQrCE2OjpObzAgs996Q7CFMbmw1JEc3+mNvrOUG5GgJ
         EcWEdvpeA+fHcXpEh6D64ILm+g1PImLHwdwGLKt7+Q95xMjqpMm2eGMf46mKaaPZgSPC
         SIJD17ETwy9nJw/kJ+rCuHqu5wJggsx5drenMb1WhIQ2U6Q5CigumYLoZkOV6+/xtnAF
         s/K5yoyDwoVllFDxGDv5Cr/HWrhQv9Rg5rLgoGoapNBrAxYrU1zcljNyA8dyAmv+ZmFX
         x6mG72nfbSVRJYDDot2hGVq8DByxGyGCt7izGBV8TGiESbnVRxX1qhewFVN5rmj/mq6c
         vgoA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id s17-20020a05620a081100b00789e729e18fsi4708169qks.343.2024.03.17.08.04.33
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 17 Mar 2024 08:04:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 548205 invoked by uid 1000); 17 Mar 2024 11:04:33 -0400
Date: Sun, 17 Mar 2024 11:04:33 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: xingwei lee <xrivendell7@gmail.com>
Cc: gregkh@linuxfoundation.org, usb-storage@lists.one-eyed-alien.net,
  linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
  samsun1006219@gmail.com, syzkaller-bugs@googlegroups.com
Subject: [usb-storage] Re: divide error in alauda_transport
Message-ID: <cc7eb13f-b61d-4a4c-8c35-394a833d5917@rowland.harvard.edu>
References: <CABOYnLw8=VM4LxgBsrwTi3HzdvGV7cYJU=4t7MMYTnrDCaDKAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABOYnLw8=VM4LxgBsrwTi3HzdvGV7cYJU=4t7MMYTnrDCaDKAQ@mail.gmail.com>
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

On Sun, Mar 17, 2024 at 04:31:01PM +0800, xingwei lee wrote:
> Hello I found a bug in latest upstream titled "divide error in
> alauda_transport", and maybe is realted with usb.
> I comfired in the latest upstream the poc tree can trigger the issue.
> 
> If you fix this issue, please add the following tag to the commit:
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> 
> kernel: upstream 9187210eee7d87eea37b45ea93454a88681894a4
> config: https://syzkaller.appspot.com/text?tag=KernelConfig&x=1c6662240382da2
> with KASAN enabled
> compiler: gcc (Debian 12.2.0-14) 12.2.0
> 
> divide error: 0000 [#1] PREEMPT SMP KASAN NOPTI
> CPU: 2 PID: 8229 Comm: usb-storage Not tainted 6.8.0-05202-g9187210eee7d #20
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> 1.16.2-1.fc38 04/01/2014
> RIP: 0010:alauda_read_data drivers/usb/storage/alauda.c:954 [inline]
> RIP: 0010:alauda_transport+0xcaf/0x3830 drivers/usb/storage/alauda.c:1184

Can you please test the patch below?

Alan Stern



Index: usb-devel/drivers/usb/storage/alauda.c
===================================================================
--- usb-devel.orig/drivers/usb/storage/alauda.c
+++ usb-devel/drivers/usb/storage/alauda.c
@@ -951,7 +951,6 @@ static int alauda_read_data(struct us_da
 		unsigned int lba_offset = lba - (zone * uzonesize);
 		unsigned int pages;
 		u16 pba;
-		alauda_ensure_map_for_zone(us, zone);
 
 		/* Not overflowing capacity? */
 		if (lba >= max_lba) {
@@ -961,6 +960,8 @@ static int alauda_read_data(struct us_da
 			break;
 		}
 
+		alauda_ensure_map_for_zone(us, zone);
+
 		/* Find number of pages we can read in this block */
 		pages = min(sectors, blocksize - page);
 		len = pages << pageshift;

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cc7eb13f-b61d-4a4c-8c35-394a833d5917%40rowland.harvard.edu.
