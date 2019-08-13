Return-Path: <usb-storage+bncBCUJ7YGL3QFBBVPAZLVAKGQE5Z7NQZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 0538B8B8D1
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 14:43:03 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id l12sf19719812pgt.9
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 05:43:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565700181; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q2v7q1WEj6sRijAkzMEjp8vZ605SlBq8QsfEYR1UU4zW8m00rpn2B3U0BFXfxY0kx2
         OG35v7FP5+wpMdTQf9loXUi2m4hmXj8Hmn3rigeDkicXrLD1ZAvj75YLMZzbSRz5tPYK
         LOr3F5AxXrKZSBg2PkcwrTAza/3JuN9FWUIzvsJQ8aYm4gq+jqqcDCPZFGItr89eTNMn
         AKcPenSgfYLNpfmbLRWRebsMFJDV3h17Wmiq5he2CuUEiGak48YAPjz41AuXSeYTvv2H
         Bj/e67lNgWVjH1sY2Erpow0Ikw0+nuwLGmuMMyLr1RTJrruSowXTna3qMpuNoZrCKdJp
         63rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9UGfGcqiet9qhThx1rRrQAIO0eh/8nGmEvdS5VCp8JE=;
        b=blwccP5Yg0Wnkq+kxvp4Rl06KBAzXbfS2Mfapxdosemze86WuFvlSTzJfR+g9zniLw
         xuwt9Okqwof8dlvawmi3mE55ku1407IMLDu2vJZoC/MSOJNbwk0nrBcj1Ri/nJTzrSO1
         NuA8Y0MHdFEqg++5UKwFhkSiOCTp42LpHsba9DGzX/UXwJPWXqid9S5fNjJMS7RGBuqS
         OYdQUralcVp1SKjHpx0xyZSBjm9BhoXUiKbd/VZvEmB9wcy7hnzjE3arYSUKhB1kfJK3
         3dcyuvEjtavYqlIy/O5qKmGk6NagmH7sz65NdPXNctEG7BAjBAZI/1Fo62d0MrM7BXOQ
         p12A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IyOUegnC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9UGfGcqiet9qhThx1rRrQAIO0eh/8nGmEvdS5VCp8JE=;
        b=TixUnI/xSlbfH5zQ6hZ8gETkf7ab4V0q4LI9ePikMz5mqOu6jhDlA/21iANZN2cxaO
         BpdKjRCMYGb/De6bD1TNTweyDzkAX3tkQEneinblTCbKIBJm1ylwYgO1pHkOE0QScLDe
         SkeI1GanX2WLMl6Tlu26wkN/1Sau4glI9ixJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9UGfGcqiet9qhThx1rRrQAIO0eh/8nGmEvdS5VCp8JE=;
        b=HjoMWyqf4AiAo/iyqygh2Na5BU0THi3XD4hmz+Y2uJALAmyOqSd0RUW3SpSg7D4fYO
         tZGSXRhfDNEjGVFBZ4SecKY8Yhawdk3l3ZlFJoyW5+nBkyLVYKrCMG04mCFlcolcqqYv
         CDrikwnO+2iBpe/CGZH7rZZ+yy+0LOll17TChU+CsEORyP+6tUuGFmL5crXqgtqGirW+
         es6/LYcAgtzCeoTDNxkey5wyb4jzD1H50zYMLRWBvIQRxtwEjGUNVZmiv0fTh4cZmDs/
         NvJ2El9vKSeEDFUZUgiRiC7Sl3f/SGMum3W5G07kDknP/qbIs1BOMN98YeTKal+pRXNr
         SpuQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVv/Z/8F9gd0jwtFnmimZMqPUKhsqsNiVkXGa7l87RrLkxNCnbC
	k547F0p2l9BH1iTmebt1RvmRDA==
X-Google-Smtp-Source: APXvYqzIc4enlcLxTyVIKZ6zT/MxG9aYtLVq6X/dQtzBKKXYvziqdIOO3JBN2KTi7WP3VNEoL7+aNQ==
X-Received: by 2002:a17:90a:8591:: with SMTP id m17mr2113141pjn.100.1565700181738;
        Tue, 13 Aug 2019 05:43:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:b518:: with SMTP id y24ls25128350pfe.14.gmail; Tue, 13
 Aug 2019 05:43:01 -0700 (PDT)
X-Received: by 2002:a63:c03:: with SMTP id b3mr35124508pgl.23.1565700181367;
        Tue, 13 Aug 2019 05:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565700181; cv=none;
        d=google.com; s=arc-20160816;
        b=nS+BxowFu26kWjgiGw2SE857TQol/V1RGOHk9TTobU4CuOgOuCjFZFJwiuX9GmyYwG
         e2lfByuL30Xq1tpoXD16Ou26Ht1xaSstbjIn66HBnbOPQQPUtxsRysqqeUL+zZA8AJ0S
         6UwGdvjlafnIRJVdYlYPyk9Bfl+caio4s4qw+prnAq7I64zgcPS4AvhNDeLCbQMhf6y7
         stlYz9AXJNt0zPKABy3xUuabT/i4sHFXWWx2/4cT2PrNJ10vFNrpPZxuLzuww4ftAUxb
         7khay+bINHzrmZm5+DCKPpSZgeIETzlvZ/KLq5IljDGaO9ScjRagt1CdXKfl8ImGer7m
         E2vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=UemB5RGa4iwBoVg1uHO8WG6kqwIRPPjYm4vbNJQS2/U=;
        b=kJxb8PIXkw9VHfhjgFZn6uGeCHP6hpK+0rPuWZ3Ia/hfaMrG8pFCsSavsI/SPMxYFG
         36nQOR166M5yWrr8Uq0FVTdrnxlxIiJEPvuiM6GUQYTVtmyxgUBLUaeNZfhMhBzN85kW
         syQRXXg51lry3EIDQG5KWAVMQT/4QOaDS5lQTI8h4YBCzi23kYFMfyFh6cXkG11jouNH
         F5GoXV979/fFj4QK6ZhRC/z3Zzbj6nj/ftxaW6O8i8C+bSbZczXKCmCACKJF/13rSquM
         TqdrsT57TFaXQlJaFtUUS/yJ8FyzYaCRA/Bk7W/q+atA8t4ruAeTL0yFWrBoPayj71WI
         ccVA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IyOUegnC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id i23si64753535pfa.196.2019.08.13.05.43.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 05:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A0B2120578;
	Tue, 13 Aug 2019 12:43:00 +0000 (UTC)
Date: Tue, 13 Aug 2019 14:42:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, maco@android.com, kernel-team@android.com,
	arnd@arndb.de, geert@linux-m68k.org, hpa@zytor.com, jeyu@kernel.org,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sboyd@codeaurora.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v2 09/10] usb-storage: remove single-use
 define for debugging
Message-ID: <20190813124259.GC14284@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-10-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-10-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IyOUegnC;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Aug 13, 2019 at 01:17:06PM +0100, Matthias Maennich wrote:
> USB_STORAGE was defined as "usb-storage: " and used in a single location
> as argument to printk. In order to be able to use the name
> 'USB_STORAGE', drop the definition and use the string directly for the
> printk call.
> 
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  drivers/usb/storage/debug.h    | 2 --
>  drivers/usb/storage/scsiglue.c | 2 +-
>  2 files changed, 1 insertion(+), 3 deletions(-)

I'll go take this today.  The module really should just be using
dev_err() there.  It needs to be cleaned up :(

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813124259.GC14284%40kroah.com.
