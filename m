Return-Path: <usb-storage+bncBD4NDKWHQYDRBLNSW36QKGQEA7SWCIY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id D66E92B0EF4
	for <lists+usb-storage@lfdr.de>; Thu, 12 Nov 2020 21:21:03 +0100 (CET)
Received: by mail-qk1-x747.google.com with SMTP id m76sf5132708qke.3
        for <lists+usb-storage@lfdr.de>; Thu, 12 Nov 2020 12:21:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605212463; cv=pass;
        d=google.com; s=arc-20160816;
        b=F0rAoU7dYDQHfHp42HWR6WdgCct44GjCYNw8n2cyoggAACahN+Vjw0kLWR5nWJbI3j
         jmc7nesthX6iU+GyclWtFvhBjFaSitGBZkU6luJy/VegRCTDiEaGuzYIg8GMVgQJhjyt
         MDXRyPz9ETH92x+qGO5M9/eQeERBP5HzCNFdjqfvnDNeSc7ux1xe41aDvpI9iP/oZKZ5
         TO7OLzX/EqIgU8NMQtkKoD88zlAqvgcG0MVzVvmfYevfvWH73ZyTv3zfwpQwMM2ceDIt
         GkUN9uXNoWakMZ5Svfe/X6lOCvHP03CsNUZLwYnYHhsc6I/rXGme0tK8DL5K9cae5WxV
         F8Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9lRQdHVTdZG41abVzllV56b+KLQV8VsOTEHHEKgXmmw=;
        b=yPxVgFs6Nx6G/yHX5VMDCtkkp/yzhTysKzThTSh5WuiM/N4D6NVq+BuUC5t4+34xp8
         085kVcwriTZDin8EsBHBxwsFqNotuxCOqQXpLK7FF3wBa51FTAg9bKQ+IYj8jVSCY+jn
         G6lPRwKP88De1LMoHuVETwtr9Zh7hsg3MkZ99A7KEjbfK/SCUVXYHbuKytMWVVn4wLD4
         5llC63uTf9rQdfWAbeS3X2Gvqg6FOFdEMI/grdZG7Ifu+JQssOTTyk7mwuwlekWgHQ6s
         8N5HoDTwkKjM5LLSa/lUPpyXjqtNCdQVTW4m2rv/Psp5Mf9A2DZlOl7bbkLu9No2NbeW
         Jvfw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T0m21Nbn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9lRQdHVTdZG41abVzllV56b+KLQV8VsOTEHHEKgXmmw=;
        b=eNx2ZvmnBoSq+XU3NVPCXiHYWWwqOrpHaoPxvhik7TMRW47YlACtYTnBFLYS2WK2eN
         LKIfNYxZAGkYRndfUU70qt+iAoyEilb5FggH+E5D2y+8aOc2AVlI6b3olH9NBNfM+nem
         19IRvGXHsasUPbIPCRGviEHOkzFTJ+rAjpL30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9lRQdHVTdZG41abVzllV56b+KLQV8VsOTEHHEKgXmmw=;
        b=WqQcgZJwdp0hLRWkRK3s0SEGvBZuQduYxZZqP5SMNH5j8dqapjb3bdauhc1WnHU1UF
         aEfjrVLocLHOkTNFK9s/k80xcNRTrHN1k+I6f3mD8XpaoUAwEnoKFsGeWDLt4dYOUtXK
         neaQHeId/d/SylZn96wRSN0SYwwE/Q2ihs98zLbh8PexMSYMDigkMr0AGQXXMk/VwvWX
         /WrjPLZ3AbOTRcYL2wccAZcErktmK9hnpKo7K98e3uVhiDq9+TFhMV9o/pqj+Vy7Fn3K
         KBFSp+69KX4GrSsgPTgDKI2UonUgAUaylcB0nyg6xmv7JrgB+rkY+73l7pICWzjCYk3M
         0T0A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533884AWuu+4vdSQHhcXGk09ySfMXq8ksifZdATW080H7FJlPXil
	IrHUpFYT29pcmQRiqoZWSaAdgQ==
X-Google-Smtp-Source: ABdhPJxaJCabNXvycTyPz9ngX2+9ZeDrIPLsY1rhMrFyb0Cw1DOVkaU/6CbmIgtpNu4Epbj7Trt+aQ==
X-Received: by 2002:a37:b545:: with SMTP id e66mr1613069qkf.392.1605212461781;
        Thu, 12 Nov 2020 12:21:01 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:152:: with SMTP id x18ls936897qvs.10.gmail; Thu, 12
 Nov 2020 12:21:01 -0800 (PST)
X-Received: by 2002:ad4:574a:: with SMTP id q10mr1408164qvx.53.1605212461294;
        Thu, 12 Nov 2020 12:21:01 -0800 (PST)
Received: by 2002:a05:620a:8cd:b029:15f:5603:a7ad with SMTP id z13-20020a05620a08cdb029015f5603a7admsqkz;
        Thu, 12 Nov 2020 12:13:00 -0800 (PST)
X-Received: by 2002:ac8:5196:: with SMTP id c22mr870047qtn.387.1605211980367;
        Thu, 12 Nov 2020 12:13:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605211980; cv=none;
        d=google.com; s=arc-20160816;
        b=C1SYapXE6YVdnF5f9yucjZNP5XO0bgTuKj8RGKPQWQBb2S9JuhXeVNkIdBYWxrmIiC
         lxtbKQha3+KFxSsVJQq0nOBF+r7+rIR7vl1Sp49HMfsdA0d7dhqzHnrcrgLlT1/VqUr4
         XesC+nZZdkVPqzg2puhq7ow39TN8OTy1K+u1XQ3Cqjlmu1y5uXHP3YiBd7oeWf+gLsU+
         VqiYs+h7037/WAGil9+cExVrINari47Z82brTzfsfgGFEkDv2gKv2vUiFASEq3aC37IF
         +KQeArjONBDiAHUjR7HE7ObYtXLDKb45i0ZMYV3bVgp29zhmHogXzNol2VQs8RX1QNyd
         qwAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jSLiwf45DctnZlDAuzdiBpZq++0HKZoLZ6SkMPPn0Lc=;
        b=rFTVjDBktjFWFMK4VAZonKjwa49JXxNhTXp7HKKEtJEOMfIFuuRSWBVTinc97PF3w2
         E5ABXXSvnQeSJt6cqQxOHutTnOniolnm7J54XOI9iR+hfUxVIPe88webWd5basVtUson
         WMvmdZZLkgjLP/U+0A92YKvetuaz60x126WYw2toN9WG6Ufu4VLKewercPplN8qoSyf2
         3Gzkl1xq3D9efgHW0yhR/QX1Bbb7PqcQtbrezY8PsHH6tTLBSwttmCHnFfh35SoxKkoi
         qlAMydRGOwJ1PbzduzlpKSPFBJp0WOfDoJ5/WxbgUxZ2XzfZEjqxqJCNIeBFLUIYjF8p
         zCHQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T0m21Nbn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id m7sor6651045qtd.2.2020.11.12.12.13.00
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 12 Nov 2020 12:13:00 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:ac8:6898:: with SMTP id m24mr901388qtq.157.1605211980076;
        Thu, 12 Nov 2020 12:13:00 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id z26sm5147041qki.40.2020.11.12.12.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 12:12:58 -0800 (PST)
Date: Thu, 12 Nov 2020 13:12:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: storage: avoid use of uninitialized
 values in error path
Message-ID: <20201112201257.GA1665022@ubuntu-m3-large-x86>
References: <20201112191255.13372-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201112191255.13372-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T0m21Nbn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=natechancellor@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Thu, Nov 12, 2020 at 08:12:55PM +0100, Lukas Bulwahn wrote:
> When usb_stor_bulk_transfer_sglist() returns with USB_STOR_XFER_ERROR, it
> returns without writing to its parameter *act_len.
> 
> Further, the two callers of usb_stor_bulk_transfer_sglist():
> 
>     usb_stor_bulk_srb() and
>     usb_stor_bulk_transfer_sg(),
> 
> use the passed variable partial without checking the return value. Hence,
> the uninitialized value of partial is then used in the further execution
> of those two functions.
> 
> Clang-analyzer detects this potential control and data flow and warns:
> 
>   drivers/usb/storage/transport.c:469:40:
>     warning: The right operand of '-' is a garbage value
>     [clang-analyzer-core.UndefinedBinaryOperatorResult]
>           scsi_set_resid(srb, scsi_bufflen(srb) - partial);
>                                                 ^
> 
>   drivers/usb/storage/transport.c:495:15:
>     warning: Assigned value is garbage or undefined
>     [clang-analyzer-core.uninitialized.Assign]
>                   length_left -= partial;
>                               ^
> 
> When a transfer error occurs, the *act_len value is probably ignored by the
> higher layers. But it won't hurt to set it to a valid number, just in case.
> 
> For the two early-return paths in usb_stor_bulk_transfer_sglist(), the
> amount of data transferred is 0.  So if act_len is not NULL, set *act_len
> to 0 in those paths. That makes clang-analyzer happy.
> 
> Proposal was discussed in this mail thread:
> 
> Link: https://lore.kernel.org/linux-usb/alpine.DEB.2.21.2011112146110.13119@felia/
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Assuming that setting it to zero is okay (sounds like it is based on the
other thread), this is a reasonable fix.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on current master and next-20201112
> 
> I did some basic compile testing...
> 
> Alan, Greg, please pick this minor non-urgent clean-up patch.
> 
>  drivers/usb/storage/transport.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
> index 238a8088e17f..5eb895b19c55 100644
> --- a/drivers/usb/storage/transport.c
> +++ b/drivers/usb/storage/transport.c
> @@ -416,7 +416,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  
>  	/* don't submit s-g requests during abort processing */
>  	if (test_bit(US_FLIDX_ABORTING, &us->dflags))
> -		return USB_STOR_XFER_ERROR;
> +		goto usb_stor_xfer_error;
>  
>  	/* initialize the scatter-gather request block */
>  	usb_stor_dbg(us, "xfer %u bytes, %d entries\n", length, num_sg);
> @@ -424,7 +424,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  			sg, num_sg, length, GFP_NOIO);
>  	if (result) {
>  		usb_stor_dbg(us, "usb_sg_init returned %d\n", result);
> -		return USB_STOR_XFER_ERROR;
> +		goto usb_stor_xfer_error;
>  	}
>  
>  	/*
> @@ -452,6 +452,11 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  		*act_len = us->current_sg.bytes;
>  	return interpret_urb_result(us, pipe, length, result,
>  			us->current_sg.bytes);
> +
> +usb_stor_xfer_error:
> +	if (act_len)
> +		*act_len = 0;
> +	return USB_STOR_XFER_ERROR;
>  }
>  
>  /*
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201112201257.GA1665022%40ubuntu-m3-large-x86.
