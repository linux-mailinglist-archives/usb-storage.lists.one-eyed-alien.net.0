Return-Path: <usb-storage+bncBCUJ7YGL3QFBBHGV5OMAMGQEOEGANKA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id C23C25B2FBE
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 09:26:21 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id i17-20020a05640242d100b0044f18a5379asf623203edc.21
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 00:26:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662708381; cv=pass;
        d=google.com; s=arc-20160816;
        b=wzsGFW0RM/HzeP8jv6RunL6YTQXXaqMo1LVTfVVxE60UeyYjSGiqUMoSYiZgzZ0+JO
         l+w+fRw0p0DcgnO8Av/11cw/IBrE8ai48aqZHUaiK+d3nl+TDj/csILL0sFddn/9r6Kk
         2o53xCr5LgQnHBNAgGkMP0HcgIiISv1JPQvPFVd5AjrSAlvsdCdWGGfUtCKBjp2MQn5V
         2t1XOjrODsCrn9reMnmK5TaHaPcAV/xNJ/zK/ygFhZPBvUk8yk5XewZ69nQE6iKF4a/x
         mk5KAMV/E06hfx4611KZB+d65LdOjHOFSY1ORICtRmS7wju7yVv9QTKPCDsS1YHwrb/e
         0JTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=K+7UtpIop4mhyXIPfxX7Vr0VsNE9JQ7mLGi0J5l4pEw=;
        b=l32y2FPJMztlKsNzKqe2G7Ak7ph2Yu8u56fC1h9sLs7KYrzX4PWHrS7Ve+k9WWiK9v
         P/G8lXb28EaVxPuuwMxF6izWRO+d+vAtn+fyLoL4lXnd5HK4MzkxS7QPeh8bjFQgB1dc
         KizyaZesJeAexKAPWs2L+nfsyCTsVO6n78lvDU0bJ+Yjgo/NKd0KUIvUw4f0J3iXk5VK
         aUYs0QILJ6Be95mMhaDikGFEb5nfuo91PZDV1EdBIPqmReU7kTwKz60d35ZT8NzEDUl/
         SgrYsa/cMvqWosyqgz1524CICXQixb2TLIcsxs2U7HlIBv9wG4rs8CXBT9zr0C8g+6rf
         bErw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=anckkx+W;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=K+7UtpIop4mhyXIPfxX7Vr0VsNE9JQ7mLGi0J5l4pEw=;
        b=f/IIda8nqB2Gbqva51d+cLR6TmwX1BcUy3rPQxKne21q9jL6L6KMXXopzmjLZChNS+
         ZAMNB/A06sDbCFYUsi2LXFO7zv+Ff2VrKiGWZDvTuuEnov7TsymO7cSV1w2R/Q46GI9X
         iGrezIZTF/vTJvccDoJBQr1NE+8p2Chu4a/dU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=K+7UtpIop4mhyXIPfxX7Vr0VsNE9JQ7mLGi0J5l4pEw=;
        b=5Q+Q1eU+CC03WFztuyRVJH6f2lyP6W08b1oF9+Xx7n+wxEm2lBhi06xlzId4WeLFsb
         n0MoXgKVv2fRUo128wqXF6GqZDqsS6lpf1rEWBZ2C2wmQu9fPy2KJYdXSbaMsgUKiRxU
         Q3uBtyo9/1aR4dnU6Bb9Hlt9NvkJFp6MF8pcUDK+q86aKPswC4go+hDXAvNqShWeVAEG
         c7Ung6GWR27fRXZxKU0vNH+DwgOuk/L9d8Sbx/dkIn+5DTVDJvUgGwwS3Fo0IqrmJdPZ
         9cNG8jVFUGduTDNVL3U2202KtyOuoewTOMMT9i/VI8DOvie2UbU6jumsA0Qk7NNEfBmA
         g+dw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2zl7Iqo98wBCFgCgtVZVhV7qHODCfbCJwfGrQyN/KXRoh+1n3Y
	Fm4ujTFkOhfUTtk4I6Axa8XuEg==
X-Google-Smtp-Source: AA6agR4U4GlWNyJLhVb2aKtsiHsp6bM4xD1zfPmZAnrN93srynGP3cpkZPztmUDSwpl8USuaW1MkgQ==
X-Received: by 2002:a17:906:8a45:b0:770:26a9:a99 with SMTP id gx5-20020a1709068a4500b0077026a90a99mr8677822ejc.47.1662708381246;
        Fri, 09 Sep 2022 00:26:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:3b0f:b0:730:6d43:91d with SMTP id
 g15-20020a1709063b0f00b007306d43091dls486095ejf.6.-pod-prod-gmail; Fri, 09
 Sep 2022 00:26:20 -0700 (PDT)
X-Received: by 2002:a17:907:31ce:b0:742:1206:529e with SMTP id xf14-20020a17090731ce00b007421206529emr8834594ejb.643.1662708379970;
        Fri, 09 Sep 2022 00:26:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662708379; cv=none;
        d=google.com; s=arc-20160816;
        b=BrO/WI7Cj3CzV2K6+ApXkKMerxZMlYKw1IliWvZ0S7w36cpJYrx3qyztILr21P9qJE
         7Q15G4K2mluRzbqbNVEPTRtkDlGZj6wXiWaFZp4u4MWCMUrS0L9x05IPHeRlNogM4rKs
         btThrr60xuJRsyPTPYbuHOqbSRLnBMO+NlbcH2Q9tmKvHER7Ee7daJYw2Jv50bkzKzpe
         zEXFTBhwFqdvj+dy1L6jdBMbYSVtzGJ9Ti8jI2Phu1uvQuNW75F7vFA8kR9znoZF41sW
         idQK75UTG/MSt4HB+QYTGGz9M+T6k5HyfmOwdIMR5iUvm+QdJ6pDpBjqQcSNuZhd9KwR
         JBLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IW8DaaA4XSZDdxRiU5N05Ofz0VCSYvz/nLZimSrSzus=;
        b=eJQhfx9UDB6VzsQ96QEQqf6GY/uZtbDgypHJnTqlUpB+DFvI0cFTP4fkyBCc8tdkwx
         VEpLSctnNw59AaJ1U+UYdvAszUmiB4Syal2Teksvji6N0zxA/+DzSP+wEKnxTKVkIlkY
         n1NEmyejs2yLJd9op3Fs5278gsXsd4g05fPnHcKlUYzLsLu9KyCzgc46T2Tx6OdrpJac
         eLbWOd4o0ohrmMkg4ElLwpZ99KJxJ70ESjqn9nnLbYplNHx8wstLbk802zwoCqhmK1qO
         yjeNz+8NloWUI4FH/w2W+QjooBMPM5qkCw9SUCO9jVEnFAZ1zEUeGYBKHFHTdFWDZcYv
         xJzg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=anckkx+W;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id rn24-20020a170906d93800b00774799ee7f8si878007ejb.913.2022.09.09.00.26.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Sep 2022 00:26:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9D61BB81AD8;
	Fri,  9 Sep 2022 07:26:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4943C433D6;
	Fri,  9 Sep 2022 07:26:17 +0000 (UTC)
Date: Fri, 9 Sep 2022 09:26:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, zhongling0719@126.com
Subject: [usb-storage] Re: [PATCH v3 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Message-ID: <YxrqlzXNHmeIR0Uw@kroah.com>
References: <1662695451-28270-1-git-send-email-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1662695451-28270-1-git-send-email-zenghongling@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=anckkx+W;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Sep 09, 2022 at 11:50:51AM +0800, Hongling Zeng wrote:
> The UAS mode of Hiksemi USB_HDD is reported to fail to work on several
> platforms with the following error message, then after re-connecting the
> device will be offlined and not working at all.
> 
> [  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
>                    inflight: CMD
> [  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
>                    04 00 00
> [  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
>                    inflight: CMD
> [  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
>                    00 08 00
> 
> These disks have a broken uas implementation, the tag field of the status
> iu-s is not set properly,so we need to fall-back to usb-storage.
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
> Change for v1
>  - Change the email real name and the code worng place.
> 
> Change for v2
>  -Change spelling error.
> 
> Change for v3
>  -Add acked-by

You sent 2 different emails with patch 2/3, yet no patch 3/3 at all.

Also the patch series is not properly linked together, please use 'git
send-email' to do that.

Please fix all of this up and resend a v4 of the whole series.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YxrqlzXNHmeIR0Uw%40kroah.com.
