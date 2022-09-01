Return-Path: <usb-storage+bncBCUJ7YGL3QFBBOWNYKMAMGQEMF25CDA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7805A96F4
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 14:34:04 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id q32-20020a05640224a000b004462f105fa9sf11526285eda.4
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 05:34:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662035644; cv=pass;
        d=google.com; s=arc-20160816;
        b=YUrqHnpErUJcpFxVCwtsX2UObnnoz0o2Iyg3yd85gQUtHHN3OluGzC1DYY+KCLJ2Ew
         mc1sP8nTY7dBbifrg3/HkGHhOOHqVkcV7yQPGooHsF8WX7ST59jcpvvDfQ+uVfowMc8I
         g37BmvwujM67JmyD8/RA/sBng3QQq9detIDxEwtG+yd3vddlRYTGLy6dyf14hF2855SU
         EE/D8qRDREo7SpjLDJX0/l1dHAXOzqKYzQV2n9UYA6+07M92Wo6kGOtuC9XajgRrCcWn
         kI/aGVxbvQpBByWZA06Jiou2eLs9XczgsMrdsIi7SCFsA/O3R4kcN4Y7GUZp0iV/+ufU
         aRUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=51xJibd4oBUFMfWR6VVQs1sndeJTNlz9YQ656Pju6+I=;
        b=q+dFMSWQ+Pk7pnpJE6xm6G4vpOQgVtQ0ZdmNIgZBktfiZN1ulAVb7GF/6+diwL87Qn
         axARVwUXR8EuhwrzazNWt40EtUUv7npu1HVE7zDLHbLdqkTmdmVeecGbkj9NPX98ZpGF
         a8faGJCucU978gzR8BAl6h0cwnbQnxHuKbGndyl+y5HW9xDYO6Og9iqFD4WzN+LnGs+s
         w5CmySEeOkZpDLX4KTTAuqw0ixv8CqJnJqwjE9ZDs58WZaAFn6kQQ5xDM2/mAmlTn1DK
         bMeeTw33xenjDsvW6HW+CWQjR1noakolPM6N0kPUro+cqbAGVItoVvYjvSAFiLBNbYwD
         Js9A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=moj97C2+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=51xJibd4oBUFMfWR6VVQs1sndeJTNlz9YQ656Pju6+I=;
        b=I+9IZ/E1/zjPT0qLFwDtal8LU90Wdkj1PUXs9kvzngEWGd4z1Q64Uaq1o/aJqSBkoy
         L9nPmkqQ9ZoW2VdzsKZ8zUtF/FTWyxyilgDHeRHL21JumrzD46Xy2qqoA0jNzSJWWgRl
         LT3RcZwiQ3hi2TohFAON9OHmAilCvZFKUeDRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=51xJibd4oBUFMfWR6VVQs1sndeJTNlz9YQ656Pju6+I=;
        b=SLuzWi0x60qcre3TnnWHnBnXPZUFIybLAd7MmqDft8pNVN7taXNI8cWYVT+zbSZW0G
         kAhEAai5nRkrAiCDrmzyvOI2vfY7gqUqS/vB8HJI83EM3rczHUAJWR78fGuqsXMIbTtS
         rAzIpJx0naJlmIG97fo1xxIT2/xPXPsPallvfi2QqdyB60Nr9Yz7o3QcBnZ+EZ67nIGG
         Z42y1+aJEmKiBvaC5Qgk7b8F47Gt7h8sugTJVNfyUIrv9OrOYYImCyzmyT6nkvbLwo6E
         UIXm4H8D3TKp7BVm2aBY0p6hfBXRr+2b/ngEM3yCCQryL3ojnZYFTvyWw/0ezHToKDAJ
         TPzA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1J/l4Lodv3bjo27niRzrrrGEW+4zs6hxfqAAihOQVoHndQkIcS
	jwTbGRduaBL4c9fis8tvNptJ8w==
X-Google-Smtp-Source: AA6agR7PcGwP6zg855BOoUNDPAkvu6en/1OQnHYkB+g90aQqeU+XkhkOLyIgryB3ys1K7ASOwJrLug==
X-Received: by 2002:a05:6402:754:b0:448:4fbf:9fcb with SMTP id p20-20020a056402075400b004484fbf9fcbmr17829014edy.44.1662035643004;
        Thu, 01 Sep 2022 05:34:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:81c4:b0:726:abf9:5f2e with SMTP id
 e4-20020a17090681c400b00726abf95f2els1170886ejx.9.-pod-prod-gmail; Thu, 01
 Sep 2022 05:34:01 -0700 (PDT)
X-Received: by 2002:a17:907:9814:b0:73d:8afe:6039 with SMTP id ji20-20020a170907981400b0073d8afe6039mr22965120ejc.566.1662035641687;
        Thu, 01 Sep 2022 05:34:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662035641; cv=none;
        d=google.com; s=arc-20160816;
        b=wAlZZNiH9vQ16oOpcBRj47lTMvn28tGPU0nzQz9v/Kjn2TKR6CsjyLekmsB0jTLQ2F
         QAmdbGIloU0MDEaA3EZ5gabqRkl8RBeNWxj9LY0JHacLyfj+PHPF+XuqFJ3tMhCUM/vC
         NjgMbDEtLHI1vo6zNzbNL5l66cURGNXNcfKi4o7PjYB9CJh0SsbTuCRzRD3yqQmmXYif
         nKTkEQ6TKeSgboJCUeZUqvUSNqO1lfpOXRrl77ubni97x4JPZh1Utx1+gAGY69m6yyvC
         Ksw2Fc/X+PFCKy48OxLosQmivAOCG29ZdeKrDexWr+672Q/RUMMhA3jJ3QFXm6Pqelr7
         aXDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sCEQMvVnQV1Sps5sXaHvVad4XjQxVJGUiyzLzX2kLao=;
        b=NrDZVZ/M7H+NFQJ/jPYEZadpGSvTlx7kNhoBcUYgEGZVhD86q/QzFDm16m8G2zAFM9
         fo4rFBMyA96AHVY/SzB/b+Ts9CZpqyBnDFfJ2FGdy0gatQRQCJGfv8RE2IyPkNRkBE3F
         1VkLQBH6g/fp0QpWB/Kx/DKWFhsUdw4IDIWPvRhciwVsSzKLYwFnLOvxScod1gluCIwO
         /NHk2Ff38ws+QjS9gitx+2T9gfURSxRtzIntpw+s27erarQZzhsbG/TgvXq6wORMEQw4
         JBnQ+q+rblMJt2rgt3C0adu6b7HuGAyV/d1hqUxctQuJn+uo1Lj3Jhct8lV6sa0a3Qn0
         f9ew==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=moj97C2+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id 4-20020a170906328400b0073d6f5dde1asi12404046ejw.498.2022.09.01.05.34.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Sep 2022 05:34:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 663C0B825CC;
	Thu,  1 Sep 2022 12:34:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBBAFC433D6;
	Thu,  1 Sep 2022 12:33:59 +0000 (UTC)
Date: Thu, 1 Sep 2022 14:33:57 +0200
From: gregkh <gregkh@linuxfoundation.org>
To: "zhongling0719@126.com" <zhongling0719@126.com>
Cc: zenghongling <zenghongling@kylinos.cn>,
	stern <stern@rowland.harvard.edu>,
	linux-usb <linux-usb@vger.kernel.org>,
	usb-storage <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus
 and Hiksemi usb-storage
Message-ID: <YxCmtVAIrSHeLn4V@kroah.com>
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>
 <YxBvNEn0jEEd0lXV@kroah.com>
 <409cbf8b.5b1a.182f8682364.Coremail.zhongling0719@126.com>
 <YxCDQi3TpXbcwCQ5@kroah.com>
 <202209012012228283526@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202209012012228283526@126.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=moj97C2+;       spf=pass
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

On Thu, Sep 01, 2022 at 08:13:24PM +0800, zhongling0719@126.com wrote:
> Sorry, have fixed the email client to send html email.

This was sent in html format :(

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YxCmtVAIrSHeLn4V%40kroah.com.
