/**
 * @file
 * Declares the OpenBSD Desktop Management Interface (DMI) fact resolver.
 */
#pragma once

#include "../resolvers/dmi_resolver.hpp"

namespace facter { namespace facts { namespace openbsd {

    /**
     * Responsible for resolving DMI facts.
     */
    struct dmi_resolver : resolvers::dmi_resolver
    {
     protected:
        /**
         * Collects the resolver data.
         * @param facts The fact collection that is resolving facts.
         * @return Returns the resolver data.
         */
        virtual data collect_data(collection& facts) override;

     private:
        std::string sysctl_lookup(int mib);
    };

}}}  // namespace facter::facts::openbsd
