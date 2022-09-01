Return-Path: <usb-storage+bncBCUJ7YGL3QFBBOO6YGMAMGQEPQMWEMQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id F22B95A922B
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 10:37:14 +0200 (CEST)
Received: by mail-ot1-x346.google.com with SMTP id b19-20020a9d6b93000000b00637113961absf8716360otq.5
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 01:37:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662021433; cv=pass;
        d=google.com; s=arc-20160816;
        b=OFkLfU4kc+UBuGs8x8+0+UOOLrObPvwTzkAjeeyaJ/y6eAMwOm5SKycy0yeSjN5eCC
         Sshv266RdgsBf0W0XAyFZP6hgSI4Yln4dURH+MxZgxzuiDHKLG3A50BE8sDORlOwarVM
         7OzkrJC47tH70vJqgLjxTascju8oCjOsKifW8DMaPX+MS2RDNQ6yIDqbStQHVoUZsvgc
         We8+TbOuaG+49eFuSPz3UjyJLnENtqgluogBRDLSaQVx8jiaTrqeBtua0GSSnp8ltXpn
         UyJwUWQQw9PDt72ZcliI+tLMwVzzZVfG2+i5j0aAXih1xyYa/uGM16zASyPEX3ru5Ncq
         TNfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AbvXeumAnpptJKpCxgfMp3wJW0IQulTnLdPwzAPn/fI=;
        b=FH3x8w2KUhiUH0BJRqh9eZ5VN7tPKtrx6EeJg5R7bcf338GhCxp8ACqlSxn2gcsyWL
         g9is3Ho1VXV2ypTBKxZfMwcwZGC+hIerJ6UOArvhrV77Q0H6N365pUWyZchP7E1CMcw9
         cAg7WC5BXQOfxGoFdJTbCu8naEJiPPU6GyiRrdyyWNNCtBGNuBHOqgcOg4YBL4i+4INh
         NgZnt2OqW260WsH0VHRZ7j5C+wZHIuHczUDOhH0LN1q1WxlkLPK2jrbyc+D/XTGFE7dv
         dN4C//HPV8qE+etIT5YoTjXetkChzGAXZeSWGPtLQYcav94IBiPvSGcjpMS2eTSIG6G7
         d6sA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=liFiQbhX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=AbvXeumAnpptJKpCxgfMp3wJW0IQulTnLdPwzAPn/fI=;
        b=A7Caqvj8GTVOm8f9pxHNxQUrYtGM25RfxjJAg4qRFa8WHdBU/ungh1bOZCn4bhteIh
         SOpeLdlb4V8rCqK+eaxJH9wKH1hybDXS4sYPQf6HjFNXYOB47d4bSL8NSLzyHos6gGbL
         3SMmVFk40/ZRvRin4IvAdhYN4cwDwU6xuzsGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=AbvXeumAnpptJKpCxgfMp3wJW0IQulTnLdPwzAPn/fI=;
        b=VnYTXpESVelWzGA9NOhhNeUjp9q3JkwnQ91shmqgwMoVqAYPEAZSGkzUWcvxgqD73L
         YgSLPy3FgmS4duwz7rkatlFnl3tBI/pCee/RpgMLgFyOOry7ei+X/6K4naUodw5670NB
         3OXlhySXdWuwl2v2bx7VQL4zF9J3RqOYksnp57WlCJbU4/jQm0n0UwZmvxosA0F+F2c+
         mwkCpdkq3O7BT7oSDppdUh6PXhZ5Jn2MnrLJY6gwsglqbGq1532Hm+uzn7tF+WsrFt4g
         KQ3JIOPjPUpMWXTPmSSsSU86pbCLX6R2a0cw/pMdsGv08sP/UrOa4YOvDNyvyBbxq4E1
         QWRg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0DaVCusiC38SJADnq0Hb+eU5/RHmdRf5aORbiReQAFcVcPso/O
	B0fIXLv38IknPnWIgKw5KfK9gQ==
X-Google-Smtp-Source: AA6agR5BgjDoVkzV7Z+/hPL8wN5OpE9Nr+eVzCU0N0DMrtcQRksyL1pLaAYui55kO/lDpab5rxO1Ug==
X-Received: by 2002:aca:4144:0:b0:345:7285:1141 with SMTP id o65-20020aca4144000000b0034572851141mr2990137oia.267.1662021433377;
        Thu, 01 Sep 2022 01:37:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a54:4e02:0:b0:33a:8505:22b5 with SMTP id a2-20020a544e02000000b0033a850522b5ls390210oiy.7.-pod-prod-gmail;
 Thu, 01 Sep 2022 01:37:12 -0700 (PDT)
X-Received: by 2002:a05:6808:8db:b0:344:fb71:2159 with SMTP id k27-20020a05680808db00b00344fb712159mr2812031oij.34.1662021432816;
        Thu, 01 Sep 2022 01:37:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662021432; cv=none;
        d=google.com; s=arc-20160816;
        b=UHoxRl5/HkdUMbdY01EF00+2z6e/9/EAkQjC4MY8e/6+DXXH50DEHyTkxkO6yA1v3U
         YTf3mZEheuH+ktl4goTtU/Mp0ws6blWet1nL3i9KHmXDXsFgkGuqOhQT+8sUtW6LVta3
         a3wDxY6E9gpLkshRRlS5GRQOjcUFpbMty2GzMoWLfwmfzHArbQuP295/DmVneYMyMm4h
         J3OZB9WysqEJXtT1JgeNuISVUqdYxBB03DWmU0EstsWy9YDZDTVOhwyfiFVD4JAspqNo
         ixx2MpIbrryECMuDOyIBzlJwNPcrq1Y4g9BDXrgx0GFJpvzTnyHmo+khX6/kBPeVVBgv
         pvZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+BcKjYekP1yyCw29qD253CO+XW8RNlgU06Zc+A32hMg=;
        b=PC1I/0G6n23f4nYV9q3Xfc6qAN6bLo9PKXPddyad2HEZexzXVgmwmn7+VCb6gZEEw5
         zviS6tPEmdAAR4AFcRnguN9HPforTz6Hnsm9jaFOsjQoFV62Y7SGyvrxdtF0UbIv1wc2
         DSDZUIHKt4LYUvdJmzgZpYFUnPoSCUfe/qmYq3cmevfzRGoXSI+2QRPR1D8FtFBoGUp5
         HSGUhGEZQQFczdKKQJRIr+3YbvGZDgCDE5KuiJsHph7mpDrSVzNobdROghgCMtwOKd1U
         madcXVq0ZJcDzK2uMKT9rpykZ4/NMaXSSCho347hkVT4tFjxmQyXo1ffDzL0R76lKiuc
         x/1Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=liFiQbhX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id r32-20020a05687017a000b00118555037f3si10590497oae.8.2022.09.01.01.37.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Sep 2022 01:37:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8EE0B61E17;
	Thu,  1 Sep 2022 08:37:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 934D6C433B5;
	Thu,  1 Sep 2022 08:37:11 +0000 (UTC)
Date: Thu, 1 Sep 2022 10:37:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: zenghongling <zenghongling@kylinos.cn>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, zhongling0719@126.com
Subject: [usb-storage] Re: [PATCH v4] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
Message-ID: <YxBvNEn0jEEd0lXV@kroah.com>
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=liFiQbhX;       spf=pass
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

On Thu, Sep 01, 2022 at 03:00:53PM +0800, zenghongling wrote:
> UAS:if ignore uas feature for these drivers can fix the not working and
> output error message bug.
> 
> The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
> several platforms with the following error message,I tested these USB
> disks on other architecture platforms as arm/loongson for different xHCI
> controller,the same error occurred:
> 
> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
>                endpoint or incorrect stream ring
> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
>                1b000000 05038000
> 
> [  592.490369][ 1] xhci_hcd 0000:0c:00.3: Assuming host is dying, halting host.
> [  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
>                    inflight: CMD
> [  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
>                    04 00 00
> [  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
>                    inflight: CMD
> [  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
>                    00 08 00
> 
> And when running iozone will disconnect from the USB controller, then after
> re-connecting the device will be offlined and not working at all.
> 
> We changed a lot of USB devices and contact relevant manufacturers to 
> confirm the USB disk is ok.

I do not understand why there are failures on Linux, yet not on other
operating systems.  If you run iozone on OS-X, does the same errors
happen?  How about a storage stress-test on Windows?  Why is Linux going
to have to make these devices go very very slow and what will happen to
the users that now can not operate their devices at the advertised
speeds?  Who will handle that support issue?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YxBvNEn0jEEd0lXV%40kroah.com.
