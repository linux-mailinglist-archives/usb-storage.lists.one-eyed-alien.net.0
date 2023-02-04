Return-Path: <usb-storage+bncBD6LRVPZ6YGRB5PK7KPAMGQEUFDZZCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2A168AC20
	for <lists+usb-storage@lfdr.de>; Sat,  4 Feb 2023 20:43:51 +0100 (CET)
Received: by mail-ot1-x345.google.com with SMTP id j60-20020a9d17c2000000b0068bd57aa53asf4140913otj.17
        for <lists+usb-storage@lfdr.de>; Sat, 04 Feb 2023 11:43:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675539829; cv=pass;
        d=google.com; s=arc-20160816;
        b=HkRyYwqd50DSv3YPIfV93XiUbAU1auaZFrJcSCJf6vASFrB/wdOZB/TARYc5mfz4Y+
         c5w3r9zUgDM/IZ18v23EZhtTp6+CYP91nbq3Lmz2RdjzORlHgMJdKGb61O/PXSmQwfxE
         fywv97rZKMF+RPvJO5GKViTDtgvQPdbF7Wtv8nSZUxUXW/i2EeSQX7doX2V8xMS7ecK7
         ojOEYy/T6YmkP2IqdzENcmllur1VTD7HRXB2C8HSRSczChrMbd+WT1DNAOsoNWmgecR4
         gRyu799bLzC+3la7JuOnqR5aWj0e7eFEy6QB+/yetaywDihmHJFNq2oUFI5FscQwtY0Z
         BcAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HzXopagV8QK5/X5iiQbr1G+iNTy1V8RIq49z3hfR8Sc=;
        b=JVAHW+UZn0BnIqdjnYkj2CtK3HxMFid8Igz8VH9XrsHA3zkdNfQyET/nE4z/+y6t2j
         Jygx0pPVp6wVwrtWC3GXMdWgNp+rITVxS32HXeFOuKXbJPiF/NhDVIjWw0Lws8mJDoIv
         x6d1+cIZPnLEn7HisRifdJgq61koai5n2k3E35WxmAKTInJmeCQ1Ga99tv3znQMpdNq/
         wwqNWlstu3wRvRM08s+rv0ffIPqM54EeFHlCkjUHi/s+KXP2dRZWxL/U1Z7fzDfBLILR
         fy0Ufz3z90BmT+vCyo86KZDffMIWClCrbewgyIv5QbEbZtHs/ZXZGBFX2inGNH7fMhmT
         hkbw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+63d53cf2@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+63d53cf2@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HzXopagV8QK5/X5iiQbr1G+iNTy1V8RIq49z3hfR8Sc=;
        b=TCOD4bOJsiSyVxK4ARMXdWXsbSHueSXAz7L9rjOLWC0YgwPKjR4raNy0XjCxg6w7fU
         piAqkbo0mB3l+XFcTyygjMpjEpgraIlJVxNQv1sstGDu85JButWSrxu2AojXQVFisO3E
         GTIQCrVo0H3MhYZ04AbokrWjZy+HaR87Fhq3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HzXopagV8QK5/X5iiQbr1G+iNTy1V8RIq49z3hfR8Sc=;
        b=nmNmC/oAYKgeEslLgdNjj2fgd14sR+hVJrtn0C77tVhrrhE0frJqI3tkYP61Bdkf/C
         a8vW5suh1KOlx1f1949kQwRmauaCs+fONs6F/FSZ8f9v/XX/sTFNPv2wcKQlV423TAkI
         k12RXAFb7IKsRmVFPZCU13dgDyeB8aOHxkpT1oC+bWR8PFJhWj9TL2JWQRULv9bmba2w
         Ek1Mo7qbaM+8R6OSvuwJetNiaCjbo/qwwwf6b4Va6G1UbsZGkzkCVq64TduDaWjGo/s1
         wNCqXcHcHYXft4lKs8hLrwCyc2Fph+DP/4F8VuNix85nSUlvXZ+6NTB8RIj2KVwoFANt
         rlwg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKWGIHiGNJzR0+2GslkPyIOu0gvH50zU0MlcCFBMiqvcpUOle61v
	ybd7q6Z1ftjNhZw/wFOrzag0Lw==
X-Google-Smtp-Source: AK7set8SpIIaJePrN1ZEd7F9GW8Kc6aOMP09tw7DSH1niUwsVqxHgrn7TO9sYj1iaNgyrxDWzYXcFQ==
X-Received: by 2002:a05:6808:61a:b0:378:5f1f:521f with SMTP id y26-20020a056808061a00b003785f1f521fmr576722oih.87.1675539829374;
        Sat, 04 Feb 2023 11:43:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:c44:b0:13d:173c:e583 with SMTP id
 lf4-20020a0568700c4400b0013d173ce583ls4148974oab.0.-pod-prod-gmail; Sat, 04
 Feb 2023 11:43:48 -0800 (PST)
X-Received: by 2002:a05:6870:d628:b0:163:a685:ffce with SMTP id a40-20020a056870d62800b00163a685ffcemr7297527oaq.53.1675539828763;
        Sat, 04 Feb 2023 11:43:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675539828; cv=none;
        d=google.com; s=arc-20160816;
        b=Q780hKoeqzEqgMnA78SyHWVeskOIcrnnndhiWSaDEUwpc9j5Ufi1bdElebopjsLVT/
         Kjf5FNLS20ITqr92pr0DSQZ6bGk9BwuEumA6/W+zrEsE9VGhrOQO30QW1QklyEAx/med
         3WlIiSo+AoiT3ZvGStIYHkuAV6Gvzwm6mPjetQr3hrnsdtcj+qwXWSCR5f9487eNpkO3
         +sJ0QDcVWff6vsjqDT2xGg5S9tYHLKw49Q1OdbwiAdfGV496FQZpU/ntj4Cp5eQ0BNZ6
         +aMpV+n5tIflGRw6N+ePoaEgcUsIOnF3TCCEQlLfawhn9VNsoUYMEF0bWJv1Yz4a9z8o
         PN4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=iPyiy5UMsesfNddNJPtyDpA8x8Tp4y6FOiJlb6MoyzI=;
        b=Y+XEDR1yPeeEngYzC81FCyc11dVf3mlc5zsZ7U8FgrOfvguYINXPrnNTLaqGu3Sxfc
         NzB9vBbdd61ISuaRnLxMqLp2vJuDadhKYuf/8jxpFPbrut9W3MENhQhhHr5s0DWkXYjB
         QgfEsT5oMWKyipk+LXQU8D2W6zEUTalh0sqd0HakV89phrCPo4nYB5L2aPlXCnsxFGdJ
         4HBEP0XSeWFl+yf0zTa8eRzOye12XubTtiH1VnqvnNNxlq62sT/k2iwNMGOdIEXalVZt
         DcWLWkFGoXjfiXyE3ERSlgGCZq2cud2ZGaNINKDnobU1gSPG2k2rTweii/bpyHDZEUBk
         RWAw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+63d53cf2@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+63d53cf2@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id em32-20020a0568705ba000b001633bae242asi5736344oab.145.2023.02.04.11.43.48
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 04 Feb 2023 11:43:48 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+63d53cf2@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 603745 invoked by uid 1000); 4 Feb 2023 14:43:47 -0500
Date: Sat, 4 Feb 2023 14:43:47 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Kees Cook <keescook@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: ene_usb6250: Allocate enough memory
 for full object
Message-ID: <Y961c1/JIkDUqMbC@rowland.harvard.edu>
References: <20230204183546.never.849-kees@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230204183546.never.849-kees@kernel.org>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+63d53cf2@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+63d53cf2@netrider.rowland.org
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

On Sat, Feb 04, 2023 at 10:35:46AM -0800, Kees Cook wrote:
> The allocation of PageBuffer is 512 bytes in size, but the dereferencing
> of struct ms_bootblock_idi (also size 512) happens at a calculated offset
> within the allocation, which means the object could potentially extend
> beyond the end of the allocation. Avoid this case by just allocating
> enough space to catch any accesses beyond the end. Seen with GCC 13:

In principle, it would be better to add a runtime check for overflow.  
Doing it this way means that the code could read an invalid value.

In fact, I get the impression that this code tries to load a data 
structure which might straddle a page boundary by reading in just the 
first page.  Either that, or else EntryOffset is always a multiple of 
512 so the error cannot arise.

In any event, it's doubtful that there are very many devices of this 
sort still in use, so it probably doesn't matter.

Alan Stern

> 
> ../drivers/usb/storage/ene_ub6250.c: In function 'ms_lib_process_bootblock':
> ../drivers/usb/storage/ene_ub6250.c:1050:44: warning: array subscript 'struct ms_bootblock_idi[0]' is partly outside array bounds of 'unsigned char[512]' [-Warray-bounds=]
>  1050 |                         if (le16_to_cpu(idi->wIDIgeneralConfiguration) != MS_IDI_GENERAL_CONF)
>       |                                            ^~
> ../include/uapi/linux/byteorder/little_endian.h:37:51: note: in definition of macro '__le16_to_cpu'
>    37 | #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
>       |                                                   ^
> ../drivers/usb/storage/ene_ub6250.c:1050:29: note: in expansion of macro 'le16_to_cpu'
>  1050 |                         if (le16_to_cpu(idi->wIDIgeneralConfiguration) != MS_IDI_GENERAL_CONF)
>       |                             ^~~~~~~~~~~
> In file included from ../drivers/usb/storage/ene_ub6250.c:5:
> In function 'kmalloc',
>     inlined from 'ms_lib_process_bootblock' at ../drivers/usb/storage/ene_ub6250.c:942:15:
> ../include/linux/slab.h:580:24: note: at offset [256, 512] into object of size 512 allocated by 'kmalloc_trace'
>   580 |                 return kmalloc_trace(
>       |                        ^~~~~~~~~~~~~~
>   581 |                                 kmalloc_caches[kmalloc_type(flags)][index],
>       |                                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   582 |                                 flags, size);
>       |                                 ~~~~~~~~~~~~
> 
> Cc: Alan Stern <stern@rowland.harvard.edu>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: linux-usb@vger.kernel.org
> Cc: usb-storage@lists.one-eyed-alien.net
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/usb/storage/ene_ub6250.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
> index 6012603f3630..97c66c0d91f4 100644
> --- a/drivers/usb/storage/ene_ub6250.c
> +++ b/drivers/usb/storage/ene_ub6250.c
> @@ -939,7 +939,7 @@ static int ms_lib_process_bootblock(struct us_data *us, u16 PhyBlock, u8 *PageDa
>  	struct ms_lib_type_extdat ExtraData;
>  	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
>  
> -	PageBuffer = kmalloc(MS_BYTES_PER_PAGE, GFP_KERNEL);
> +	PageBuffer = kzalloc(MS_BYTES_PER_PAGE * 2, GFP_KERNEL);
>  	if (PageBuffer == NULL)
>  		return (u32)-1;
>  
> -- 
> 2.34.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Y961c1/JIkDUqMbC%40rowland.harvard.edu.
