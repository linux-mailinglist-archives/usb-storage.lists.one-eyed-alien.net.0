Return-Path: <usb-storage+bncBCUJ7YGL3QFBBVPF22WQMGQELL24RVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9E283F2C8
	for <lists+usb-storage@lfdr.de>; Sun, 28 Jan 2024 02:50:15 +0100 (CET)
Received: by mail-oi1-x245.google.com with SMTP id 5614622812f47-3be41c353c0sf50952b6e.1
        for <lists+usb-storage@lfdr.de>; Sat, 27 Jan 2024 17:50:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706406614; cv=pass;
        d=google.com; s=arc-20160816;
        b=dQ7fYBS1RmJeHcD2C++CJuNEWfiv+4pgCyQTYdFfxIZahRJhJrue2fg6anLD/JPq+c
         FeCaMJx0bGoIuC9Y3AJGM0k0+j55oVD91/BknRDA+7p/aPPxN7BGpMbHbkfGfuMQlY5A
         itLs4xVblIX0yfxGSXz2tKP2p1AyGAEfBks6V06zGtg0EuHfqfhDTanNzQn4PxLzW72e
         39uk/mIwpZCiq9WDm/CC9tZt3pG+wjK+Y6qgJwUJoNN7dxLL42QIcuCqLjsHNcqwEqL7
         pXwNM5vYHTvUA5pTTk0Te0dTTSaikEuFIvp+QtsYUCSP5DXuqDRHcn6zb2EHms7H0PPG
         n5fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VjIoIYCGE7NOmGnE4f/76LZBSSaeGjLq47mLbUJyPPA=;
        fh=t3EXWi4An44bWHv2uIUWbfMUE7Qrvf5xp9ayieGzRpk=;
        b=DbLWlJr+ITWtc1AZCzyIMB3klpLmrIfPsfUdAtUfBWq3JS1EH97lle2FCEfXVGodRS
         7loeKhITG3YPKIt7mCbq6YodKgCNCJtTqPywEPMHmfCJllUFEoO7XbqrnHUWTmAR7k0I
         VKv8vuxjrLy0Kh3zkaaLbpMCZ1I988z9sRPaUzJNIRpxVIEg2au+tkPpC4jVkN+QJfNy
         xWtvoHWq6rC0I2xG0Lc+sIBeS80IQb21sFM5UdSI0CtVjZw+u51X8yIG1n4kmXQRWC7I
         49qE1muqfF3Xls8Y3I1xoItTAHvwvlboBoQLlzLXVHnTKtnYmW6ShhDxWYiXmzzCfMCu
         auJg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="N//n48oY";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1706406614; x=1707011414; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VjIoIYCGE7NOmGnE4f/76LZBSSaeGjLq47mLbUJyPPA=;
        b=TKobn/hT3G0aUt57olHTcrFQzawwc62iBihvgmnk4D9p/+YieppJIxd/zZ+Cmi6Qud
         FK3iV7zl32lObu+dgeIthut4CHSclI6YUY4mk6ySwOEMyfLWZEm8tV+YgnrWPdEbof7Q
         UCQ4iVAoh3lb7MaGke0XItvzlD6V1SrO0tyqE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706406614; x=1707011414;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VjIoIYCGE7NOmGnE4f/76LZBSSaeGjLq47mLbUJyPPA=;
        b=RC6mThppwSFx1/O1JERYlEkKz+siY3ixR7cdn6QeFJiftm434El0/sfjcIZyKnbV2W
         EppcMd/ItH3j0mfEAm9iFaRAp53TJPHxeOw4EmABb4SbkMOUpZ8No/WwpSOE7sqGkDB1
         n4s1WEKwgCzweizNsNRVCmBNHyRLL5GkWPbiZMtd+qeGLjVnBlEGxZJGvHW4PNYBWOHj
         Rz9szxm6K1Rq0Vx2RrJNdWUYl+3fJYOLK2ana5ctvxMNKveEGZc0jJIIlDjSL73eIRkI
         HJWsZ0Dr73/wJSZTcjmGZVouJvvJAs5FZVi3spK53EyIL7MJ/BrUITy1gFAw0hlMht8d
         3Vlg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Ywr5Gko5wiMfHx/af5hnfJlkN5FKngpXYKJX5FLigEWoTU9zpO+
	ttVhHc798A5R3/3zDu+s+VOCB+39TwfkO8k6XRDy9aZfkXitK4nuifSLbsBfZUg=
X-Google-Smtp-Source: AGHT+IGVXf/vW6Vu2einQOKCsgkGz3WWRPt2+KbTaagzU/RMcMYPph3VKTVEL/8h8kP+1Ika/ch7Dw==
X-Received: by 2002:a05:6870:4f10:b0:210:e860:c4fa with SMTP id xi16-20020a0568704f1000b00210e860c4famr2464094oab.32.1706406614022;
        Sat, 27 Jan 2024 17:50:14 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:439b:b0:218:5498:d153 with SMTP id
 lv27-20020a056871439b00b002185498d153ls106416oab.1.-pod-prod-02-us; Sat, 27
 Jan 2024 17:50:13 -0800 (PST)
X-Received: by 2002:a05:6871:28a2:b0:214:e571:46db with SMTP id bq34-20020a05687128a200b00214e57146dbmr2326335oac.23.1706406613266;
        Sat, 27 Jan 2024 17:50:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706406613; cv=none;
        d=google.com; s=arc-20160816;
        b=obD8beN8z4Kgq4exk+TpHZTWno6UUg3i7Me0w+sFtDlZi25vlzNOX0aX3PJx+N4xTe
         eOoeJyrkSR9PaeXblLUV50xgQ4ZPfGJlWTd3XO212hUUIZIvvhDRlFNrUNVo55GOrU3n
         nfD6hYg7ZCiYJVCvT1ng1554VLvmeBBzUV1YoG/VQQZFOp5TDSlLjbO0wR2UwuZGsNbB
         VrFd+MAakUtdjKsxKGOF0669ZY9uVo3o9RPRQDHMsUFfi8NhJ8jf4xAX4IVZmVlNx8Qm
         3aZIhrliCwllwfG8hNZ68EvCByrpICTLNKJ5NfGXQ1VN+U3bViFYYV0ASh51Qnrcx/we
         xUOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=izzJpy5LhZbPYUCss1ttsFDNWf8AZK8YeDONyX7W4NU=;
        fh=t3EXWi4An44bWHv2uIUWbfMUE7Qrvf5xp9ayieGzRpk=;
        b=SXIcwesqikE5nBMQFGbiCs+0cCs5VL+VaYGyEPnbBYevmkJZ7ISGIiV3t92quDtQzd
         VprPCq4acTg3nHxIv3ZmzyAp0tQn0ee0rBbaXuOpar1/fliBcpn3Gmzu2q3+1eULUbWs
         hzKzscE86LrF4YVK0ib7x+hJuTfBozS1DtYsGtdIwMps/867S1hdVEQ3Gu2RxNxawQfb
         bN3MBYVSQroWxfPP8TwgL+RzgQPGBlT5eoabX4iv037b0EKlV49bG87HggS0wGYX+z/U
         NgyILmRhPHLQi4FeszcciZs9nq0fde7w4e8nVac2SeXQcI8vrsXodOjdJLBp8eWEPzYw
         fqJw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="N//n48oY";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id bx37-20020a056a02052500b005d8b68038b1si868761pgb.883.2024.01.27.17.50.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 17:50:12 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1523DCE0948;
	Sun, 28 Jan 2024 01:50:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36B04C433F1;
	Sun, 28 Jan 2024 01:50:08 +0000 (UTC)
Date: Sat, 27 Jan 2024 17:50:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org, stern@rowland.harvard.edu,
	oneukum@suse.com
Subject: [usb-storage] Re: [PATCH v6] usb-storage,uas: use host helper to
 generate driver info
Message-ID: <2024012744-ungreased-retention-4e84@gregkh>
References: <20231103201709.124372-1-gmazyland@gmail.com>
 <20231105182047.166007-1-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231105182047.166007-1-gmazyland@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="N//n48oY";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Sun, Nov 05, 2023 at 07:20:47PM +0100, Milan Broz wrote:
> The USB mass storage quirks flags can be stored in driver_info in
> a 32-bit integer (unsigned long on 32-bit platforms).
> As this attribute cannot be enlarged, we need to use some form
> of translation of 64-bit quirk bits.
> 
> This problem was discussed on the USB list
> https://lore.kernel.org/linux-usb/f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com/
> 
> The initial solution to use a static array extensively increased the size
> of the kernel module, so I decided to try the second suggested solution:
> generate a table by host-compiled program and use bit 31 to indicate
> that the value is an index, not the actual value.
> 
> This patch adds a host-compiled program that processes unusual_devs.h
> (and unusual_uas.h) and generates files usb-ids.c and usb-ids-uas.c
> (for pre-processed USB device table with 32-bit device info).
> These files also contain a generated translation table for driver_info
> to 64-bit values.
> 
> The translation function is used only in usb-storage and uas modules; all
> other USB storage modules store flags directly, using only 32-bit flags.
> 
> For 64-bit platforms, where unsigned long is 64-bit, we do not need to
> convert quirk flags to 32-bit index; the translation function there uses
> flags directly.
> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>

I see the need for this, but why now?  We haven't run out of ids yet
have we?  Do we need to add another one?

Also, after building, I get the following files marked by git as needed
to be added to the tree, so perhaps you also need a .gitignore file:

$ git status
On branch work-testing
Untracked files:
  (use "git add <file>..." to include in what will be committed)
	drivers/usb/storage/mkflags
	drivers/usb/storage/usb-ids-uas.c
	drivers/usb/storage/usb-ids.c

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024012744-ungreased-retention-4e84%40gregkh.
