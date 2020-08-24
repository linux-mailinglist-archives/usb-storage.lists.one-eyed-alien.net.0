Return-Path: <usb-storage+bncBCTPRFE7TUKRBO5BR35AKGQEQFTHQ7I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 4509124FAFD
	for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 12:04:44 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id s23sf3769633wrb.12
        for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 03:04:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598263484; cv=pass;
        d=google.com; s=arc-20160816;
        b=PH8ftnElrHUXLrM7+CW2PaCWddjzSzBju4nEupiEFyIl8mXgIKaSMlDM5O7J5yLr4P
         geZpGe87OhAMjb/bIdPv1AI5TaksFGiXLL0WXyKjhNDKmkr8E6BjqhSYAvQP8rE5deI0
         OwkEtCardeTZILNBsRZzh2RYiraJfctR0dm05hE1hbChVn9Olr3zIcU9UPfeqOg8pL0H
         NlFg4sHZ0pGf/Zo5GrUM5aptxAc3sF7gszYGimVmk56Uz4MTRsl3bgjNejPMKiZnbjvY
         BioOL41FAZgAitdUMY3f2dUd0IZXo3V54JeE486a7k62yFRJlM0cE4nAX4XuUtgj3U7R
         by+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=RNg4UMkJxrLI5Rz1C7RM/Wih+rD9iXA8AS0cRQV2eIk=;
        b=a9lwnqNOKqDV4WYLjArVkxA+C2tjAsODxnNvnse/f5Zyd4898pVfYkENBFjaI39gi5
         mWf3L426CmPxTu3A+oso9pTtpkMG+zgoXuv0veuLb3F+/W8X0JDetUOViCu7u6jj+wtm
         1RCBcKl/LXwxkrMFmJtbIlFw9EJAFbMcSLMSJKdwMrfoD/PDRpbRtubTYudohIGHT6s/
         XSPGd0MzYGTJFwQLdsquOJRCCMkqKARNWLCLQGVXDDEyGZeD54nBZO35thYMvX1yRVka
         L6Y3Bik16wmUFuyuecJOxsoGQV/RbiRdghbP2ujsxWwTqDpiLG4zLKMQPY2TcBZYahlT
         6ehA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RNg4UMkJxrLI5Rz1C7RM/Wih+rD9iXA8AS0cRQV2eIk=;
        b=ZGX12Xh3TPdCwd5l7XHUfD4WhjIiNGYL6O/wiinX5w3u2FWDQSI0AgV2BSBhtUFNJ2
         LEDPTMs+wQt1fNkL3A1+pbMlDD7XU5n+6AyjP6LXGh/PIhSSvaEF5jqtEIuIzbX3QQ7b
         qoG+kYpjome9HPpCL+Zi0HRbJCxVk6UBrLKGI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RNg4UMkJxrLI5Rz1C7RM/Wih+rD9iXA8AS0cRQV2eIk=;
        b=mp0j+SrynjUSlGk0x5i8GqJipxJx7zrqgjrFrrkf86xd7jjdgDyJ5k4Et6U+kfryBP
         IrC5a1Asu8O0N4lTK7m6lkwx04dbKxYMS7cgrwvhm91pzwOUbhVkKNTcGL0TdObj0MiD
         4WDNwlvqQoYkH60i827ejVsISV49TSPc81irOdQfKthdApYotal/0gNy3ExHixGkPvO9
         viIicGu0swQ0TJzaMBCbuRc75Lfz3/9zAlD6LbsWx+FqDGzB6vGntD12pk/R5mnHQkw7
         FKQtwHz9ysleDGsBwEmwML6Tn/kzCoM/hYvsPYLO1lpXPh6i1+0LYog3DQErHIRICAEw
         BHpw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530QyEig+XiKL+huo3D1wjuBPdn0Cc2DaxV18SkihxpGfADgkZja
	5DloS77NpfkFrxucakGvroJsJw==
X-Google-Smtp-Source: ABdhPJzAvpnfmVvnOlunRUJp50lWNIWXpIn9kVGPFGJSvuYhMgxKtsgW8LLI7L1iybEwV2mXkLAFAw==
X-Received: by 2002:a1c:28c1:: with SMTP id o184mr5163344wmo.91.1598263483847;
        Mon, 24 Aug 2020 03:04:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:1b8a:: with SMTP id b132ls3079115wmb.2.gmail; Mon, 24
 Aug 2020 03:04:42 -0700 (PDT)
X-Received: by 2002:a05:600c:28c1:: with SMTP id h1mr5093515wmd.174.1598263482858;
        Mon, 24 Aug 2020 03:04:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598263482; cv=none;
        d=google.com; s=arc-20160816;
        b=hla2CCGNtVIh+ZWw4pxejFGIhTzKgtDdnDPziD2H4UIdf3Y9/i7+1PQS4z642snx7o
         Wq+z5TVHN2h/eI+xaawV6havZa6ueA+BJY9G2ucKfggBeeFtQxcUCy6I0s/rdrVCW4gn
         oAu6yIQS+7k+8D/InaRzGMpGsuQOiZ5O3dauCWd+YQo1r3X1ZKrgQSJpETinGyX9n9Er
         9GxyQ3GV/DCjYUg2MmxusuGc6UU/4HOFdDQ+A2OkbEtqf8kNDEEQuGk3X6S2uP0SwfzQ
         /SoCP7yUhZQb381lKzWqxWMV9Fsg8oilxQuJOrCYC8dCgTsvcSBgCLs+OJnGHgE7ri/f
         ceqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=BswPOZroLWynIqVYV3t4YjMZEUh5xk3Bisi9eh5zH1A=;
        b=TQmak2ZETgu22wTGhcozkzpiFJe24Ddb1cqE/Ki6wVjfNUQs4WmEFhjWKDJqUQfTiK
         6m1QFgCAHycqCDg1wXpoh0qRJtm9PzvUUhA5HEwKYM/wboEwbGZihZwV6aebIV50bshS
         CMhg5gJ3QZnUj8bxGI3oLD217QcLQokYD2ah880cWgnpZ5MVWTXvLs4pZFTeYR63A9V1
         2VVupXALzYgdqoN5/7bm4pdKrKDEY5GYlucozAaxP1zsU7lKhlhFD07Z8Lh/SKUVvZNX
         jNSzblKiKkR9oG0r7XP5gXfQRUjX4qDMXz6C1K6KO4dwnvqBGVG/LxfURr8K5gmi3tln
         FvLg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id t28si7939607wrb.450.2020.08.24.03.04.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 03:04:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 47F95AF77;
	Mon, 24 Aug 2020 10:05:12 +0000 (UTC)
Message-ID: <1598263476.6851.1.camel@suse.com>
Subject: [usb-storage] Re: [PATCH] usb: uas: Add quirk for PNY Pro Elite
From: Oliver Neukum <oneukum@suse.com>
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Hans de Goede
	 <hdegoede@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-usb@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>, 
	usb-storage@lists.one-eyed-alien.net
Cc: stable@vger.kernel.org
Date: Mon, 24 Aug 2020 12:04:36 +0200
In-Reply-To: <2b0585228b003eedcc82db84697b31477df152e0.1597803605.git.thinhn@synopsys.com>
References: <2b0585228b003eedcc82db84697b31477df152e0.1597803605.git.thinhn@synopsys.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
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

Am Dienstag, den 18.08.2020, 19:27 -0700 schrieb Thinh Nguyen:
> PNY Pro Elite USB 3.1 Gen 2 device (SSD) doesn't respond to ATA_12
> pass-through command (i.e. it just hangs). If it doesn't support this
> command, it should respond properly to the host. Let's just add a quirk
> to be able to move forward with other operations.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Thinh Nguyen <thinhn@synopsys.com>
Acked-by: Oliver Neukum <oneukum@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1598263476.6851.1.camel%40suse.com.
